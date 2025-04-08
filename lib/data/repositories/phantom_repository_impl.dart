import 'dart:convert';
import 'dart:developer';

import 'package:bip39/bip39.dart' as bip39;
import 'package:dio/dio.dart';
import 'package:ed25519_hd_key/ed25519_hd_key.dart' as ed25519;
import 'package:flutter/foundation.dart';
import 'package:pinenacl/ed25519.dart' as nacl;
import 'package:sol_fib_bot/domain/models/history_transactions/transaction_info.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/phantom_repository.dart';
import 'package:solana/base58.dart' as solBase58;
import 'package:solana/base58.dart';
import 'package:solana/encoder.dart' show AccountMeta;
import 'package:solana/solana.dart' as sol;
import 'package:solana/solana.dart' as solana;
import 'package:solana/src/encoder/byte_array.dart' as solByte;
import 'package:solana/src/encoder/instruction.dart'
    as solInstr; // Для работы с инструкциями
import 'package:solana_web3/solana_web3.dart' as web3;

import '../../domain/models/history_transactions/transaction.dart';

@immutable
class ByteArray extends Iterable<int> {
  ByteArray(Iterable<int> data)
      : assert(data.every((e) => e < 256), 'Все элементы должны быть < 256'),
        _data = data.toList();

  factory ByteArray.fromBase58(String base58String) =>
      ByteArray(Uint8List.fromList(base58decode(base58String)));

  final List<int> _data;

  @override
  Iterator<int> get iterator => _data.iterator;

  @override
  String toString() => base58encode(_data);
}

// Фабричный конструктор для Instruction
// (предполагается, что класс Instruction уже определён в вашем проекте)
@immutable
class Instruction {
  const Instruction({
    required this.programId,
    required this.accounts,
    required this.data,
  });

  final sol.Ed25519HDPublicKey programId;
  final List<AccountMeta> accounts;
  final ByteArray data;

// Фабричный конструктор из JSON
  factory Instruction.fromJson(Map<String, dynamic> json) {
    final programId =
        solana.Ed25519HDPublicKey.fromBase58(json['programId'] as String);
    final accountsJson = json['accounts'] as List;
    final accounts = accountsJson.map((accountJson) {
      return AccountMeta(
        pubKey: solana.Ed25519HDPublicKey.fromBase58(
            accountJson['pubKey'] as String),
        isWriteable: accountJson['isWritable'] as bool,
        isSigner: accountJson['isSigner'] as bool,
      );
    }).toList();
    final data = ByteArray.fromBase58(json['data'] as String);
    return Instruction(
      programId: programId,
      accounts: accounts,
      data: data,
    );
  }
}

// Пример функции для парсинга списка инструкций из JSON
List<Instruction> parseInstructions(dynamic instructionsJson) {
  return (instructionsJson as List)
      .map((instr) => Instruction.fromJson(instr as Map<String, dynamic>))
      .toList();
}

class PhantomRepositoryImpl implements PhantomRepository {
  final Dio _dio;
  web3.Keypair? _wallet; // Используем Keypair из solana_web3
  String? _mnemonic;

  PhantomRepositoryImpl()
      : _dio = Dio(BaseOptions(baseUrl: 'https://api.mainnet-beta.solana.com'));

  List<dynamic> extractAllInstructions(Map<String, dynamic> json) {
    final List<dynamic> allInstructions = [];
    if (json.containsKey("tokenLedgerInstruction") &&
        json["tokenLedgerInstruction"] != null) {
      allInstructions.add(json["tokenLedgerInstruction"]);
    }
    if (json.containsKey("computeBudgetInstructions") &&
        json["computeBudgetInstructions"] is List) {
      allInstructions.addAll(json["computeBudgetInstructions"] as List);
    }
    if (json.containsKey("setupInstructions") &&
        json["setupInstructions"] is List) {
      allInstructions.addAll(json["setupInstructions"] as List);
    }
    if (json.containsKey("swapInstruction")) {
      if (json["swapInstruction"] is List) {
        allInstructions.addAll(json["swapInstruction"] as List);
      } else if (json["swapInstruction"] != null) {
        allInstructions.add(json["swapInstruction"]);
      }
    }
    if (json.containsKey("cleanupInstruction")) {
      if (json["cleanupInstruction"] is List) {
        allInstructions.addAll(json["cleanupInstruction"] as List);
      } else if (json["cleanupInstruction"] != null) {
        allInstructions.add(json["cleanupInstruction"]);
      }
    }
    if (json.containsKey("otherInstructions") &&
        json["otherInstructions"] is List) {
      allInstructions.addAll(json["otherInstructions"] as List);
    }
    return allInstructions;
  }

  /// Преобразует JSON‑описание инструкции в объект типа sol.Instruction.
  List<solInstr.Instruction> parseSolanaInstructions(dynamic instructionsJson) {
    return (instructionsJson as List).map((instrJson) {
      final programId =
          sol.Ed25519HDPublicKey.fromBase58(instrJson['programId'] as String);
      final accounts = (instrJson['accounts'] as List).map((accJson) {
        final pubKeyString = accJson['pubkey'] as String?;

        if (pubKeyString == null) {
          throw FormatException(
              "Поле 'pubKey' отсутствует в инструкции: $accJson");
        }
        return AccountMeta(
          isSigner: accJson['isSigner'] as bool,
          isWriteable: accJson['isWritable'] as bool,
          pubKey:
              sol.Ed25519HDPublicKey.fromBase58(accJson['pubkey'] as String),
        );
      }).toList();
      // Предполагаем, что данные передаются в Base58.
      final data = solByte.ByteArray(
          Uint8List.fromList(base64Decode(instrJson['data'] as String)));
      return solInstr.Instruction(
        programId: programId,
        accounts: accounts,
        data: data,
      );
    }).toList();
  }

  /// Преобразует блокхэш, представленный в виде массива чисел, в Base58‑строку.
  String parseBlockhash(dynamic blockhashJson) {
    // blockhashJson должен быть списком чисел.
    final List<int> bhBytes = List<int>.from(blockhashJson);
    return solBase58.base58encode(Uint8List.fromList(bhBytes));
  }

  int getSlippageBps(int amountLamports) {
    double amountSol = amountLamports / 1e9; // Конвертация в SOL

    if (amountSol < 0.1) {
      return 30; // 0.3% для мелких сумм
    } else if (amountSol < 2) {
      return 50; // 0.5% для средних
    } else if (amountSol < 5) {
      return 80; // 0.8% для крупных
    } else {
      return 100; // 1% для больших сумм
    }
  }

  @override
  Future<void> swapUsdcToSolWithInstructions(double amount) async {
    if (_wallet == null) throw Exception("❌ Кошелек не подключен!");

    // Адреса токенов.
    const String inputMint =
        "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"; // USDC
    const String outputMint =
        "So11111111111111111111111111111111111111112"; // SOL
    final int amountLamports =
        (amount * 1e6).toInt(); // Т.к. USDC имеет 6 знаков
    getSlippageBps(amountLamports);

    final networkLoad = await getNetworkLoad();
    final prioritizationFee =
        getDynamicPriorityFee(amountLamports, networkLoad);

    final quoteResponse = await Dio().get(
      'https://api.jup.ag/swap/v1/quote',
      queryParameters: {
        'inputMint': inputMint,
        'outputMint': outputMint,
        'amount': amountLamports.toString(),
        'slippageBps': getSlippageBps(amountLamports).toString(),
        'wrapAndUnwrapSol': 'true',
      },
    );

    if (quoteResponse.statusCode != 200 ||
        quoteResponse.data["routePlan"] == null ||
        (quoteResponse.data["routePlan"] as List).isEmpty) {
      throw Exception("❌ Ошибка: Нет данных о маршруте обмена (routePlan).");
    }

    final swapRequestBody = {
      'userPublicKey': _wallet!.pubkey.toBase58(),
      'quoteResponse': quoteResponse.data,
      'dynamicComputeUnitLimit': true,
      'dynamicSlippage': true,
      'prioritizationFeeLamports': prioritizationFee,
    };

    final swapInstrResponse = await Dio().post(
      'https://api.jup.ag/swap/v1/swap-instructions',
      data: swapRequestBody,
    );
    log("🔍 Swap-Instructions response: ${jsonEncode(swapInstrResponse.data)}");

    // Получаем recentBlockhash:
    String? recentBlockhash = swapInstrResponse.data["recentBlockhash"];
    if (recentBlockhash == null &&
        swapInstrResponse.data.containsKey("blockhashWithMetadata")) {
      final meta = swapInstrResponse.data["blockhashWithMetadata"];
      if (meta is Map && meta.containsKey("blockhash")) {
        recentBlockhash = parseBlockhash(meta["blockhash"]);
      }
    }
    if (recentBlockhash == null) {
      final rpcClient = sol.RpcClient('https://api.mainnet-beta.solana.com');
      final bhResult = await rpcClient.getLatestBlockhash(
          commitment: sol.Commitment.confirmed);
      recentBlockhash = bhResult.value.blockhash;
    } else {}
    final allInstructionsJson = extractAllInstructions(swapInstrResponse.data);

    allInstructionsJson.removeWhere((instruction) {
      return instruction['programId'] ==
          'ComputeBudget111111111111111111111111111111';
    });

    final List<solInstr.Instruction> instructions =
        parseSolanaInstructions(allInstructionsJson);

    final compiledMessage = sol.Message(instructions: instructions).compileV0(
      recentBlockhash: recentBlockhash,
      feePayer: sol.Ed25519HDPublicKey.fromBase58(_wallet!.pubkey.toBase58()),
    );

    final message = sol.Message.decompile(compiledMessage);
    final solanaWallet = await solana.Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: _wallet!.seckey.sublist(0, 32),
    );

    final client = sol.SolanaClient(
      rpcUrl: Uri.parse('https://api.mainnet-beta.solana.com'),
      websocketUrl: Uri.parse('wss://api.mainnet-beta.solana.com'),
    );

    final txSignature = await client.sendAndConfirmTransaction(
      message: message,
      signers: [solanaWallet],
      commitment: sol.Commitment.processed,
      onSigned: (signature) async {
        print("✅ Transaction signed. Signature: $signature");
      },
    );
  }

  /// Метод для свапа SOL → USDC через /swap-instructions.
  @override
  Future<void> swapSolToUsdcWithInstructions(double amount) async {
    if (_wallet == null) throw Exception("❌ Кошелек не подключен!");

    const String inputMint = "So11111111111111111111111111111111111111112";
    const String outputMint = "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v";
    final int amountLamports = (amount * 1e9).toInt();
    getSlippageBps(amountLamports);
    final networkLoad = await getNetworkLoad(); // Получаем состояние сети

    final prioritizationFee =
        getDynamicPriorityFee(amountLamports, networkLoad);

    final quoteResponse = await Dio().get(
      'https://api.jup.ag/swap/v1/quote',
      queryParameters: {
        'inputMint': inputMint,
        'outputMint': outputMint,
        'amount': amountLamports.toString(),
        'slippageBps': getSlippageBps(amountLamports).toString(),
        'wrapAndUnwrapSol': 'true',
      },
    );

    if (quoteResponse.statusCode != 200 ||
        quoteResponse.data["routePlan"] == null ||
        (quoteResponse.data["routePlan"] as List).isEmpty) {
      throw Exception("❌ Ошибка: Нет данных о маршруте обмена (routePlan).");
    }

    final swapRequestBody = {
      'userPublicKey': _wallet!.pubkey.toBase58(),
      'quoteResponse': quoteResponse.data,
      'dynamicComputeUnitLimit': true,
      'dynamicSlippage': true,
      'prioritizationFeeLamports': prioritizationFee,
    };

    final swapInstrResponse = await Dio().post(
      'https://api.jup.ag/swap/v1/swap-instructions',
      data: swapRequestBody,
    );

    String? recentBlockhash = swapInstrResponse.data["recentBlockhash"];
    if (recentBlockhash == null &&
        swapInstrResponse.data.containsKey("blockhashWithMetadata")) {
      final meta = swapInstrResponse.data["blockhashWithMetadata"];
      if (meta is Map && meta.containsKey("blockhash")) {
        recentBlockhash = parseBlockhash(meta["blockhash"]);
      }
    }
    if (recentBlockhash == null) {
      final rpcClient = sol.RpcClient('https://api.mainnet-beta.solana.com');
      final bhResult = await rpcClient.getLatestBlockhash(
          commitment: sol.Commitment.confirmed);
      recentBlockhash = bhResult.value.blockhash;
    }

    final allInstructionsJson = extractAllInstructions(swapInstrResponse.data);
    allInstructionsJson.removeWhere((instruction) {
      return instruction['programId'] ==
          'ComputeBudget111111111111111111111111111111';
    });

    final List<solInstr.Instruction> instructions =
        parseSolanaInstructions(allInstructionsJson);

    final compiledMessage = sol.Message(instructions: instructions).compileV0(
      recentBlockhash: recentBlockhash,
      feePayer: sol.Ed25519HDPublicKey.fromBase58(_wallet!.pubkey.toBase58()),
    );
    final message = sol.Message.decompile(compiledMessage);
    final solanaWallet = await solana.Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: _wallet!.seckey.sublist(0, 32),
    );

    // Создаем клиента для работы с сетью.
    final client = sol.SolanaClient(
      rpcUrl: Uri.parse('https://api.mainnet-beta.solana.com'),
      websocketUrl: Uri.parse('wss://api.mainnet-beta.solana.com'),
    );

    // Отправляем транзакцию.
    final txSignature = await client.sendAndConfirmTransaction(
      message: message,
      signers: [solanaWallet],
      commitment: sol.Commitment.processed,
      onSigned: (signature) async {
        print("✅ Transaction signed. Signature: $signature");
      },
    );
  }

  @override
  Future<int?> getNetworkLoad() async {
    try {
      final response = await Dio().post(
        'https://api.mainnet-beta.solana.com',
        data: {
          'jsonrpc': '2.0',
          'id': 1,
          'method': 'getRecentPrioritizationFees',
          'params': [],
        },
      );

      if (response.statusCode == 200 &&
          response.data != null &&
          response.data["result"] != null &&
          response.data["result"] is List &&
          (response.data["result"] as List).isNotEmpty) {
        final fees = response.data["result"] as List;
        final avgFee =
            fees.map((f) => f["prioritizationFee"]).reduce((a, b) => a + b) ~/
                fees.length;
        print("📊 Средняя комиссия сети: $avgFee Lamports");
        return avgFee;
      }
    } catch (e) {
      print("⚠️ Не удалось получить загруженность сети: $e");
    }
    return null; // Если запрос не удался
  }

  ///🔹 Динамический расчет maxLamports и priorityLevel

  @override
  Future<void> generateNewWallet() async {
    _mnemonic = bip39.generateMnemonic();
    final seed =
        bip39.mnemonicToSeed(_mnemonic!); // 64-байтный seed из мнемоники
    final keyData =
        await ed25519.ED25519_HD_KEY.derivePath("m/44'/501'/0'/0'", seed);
    _wallet = await web3.Keypair.fromSeed(Uint8List.fromList(keyData.key));

  }

  @override
  Future<void> restoreWallet(String mnemonic) async {
    try {
      _mnemonic = mnemonic;
      final seed = bip39.mnemonicToSeed(_mnemonic!); // 64-байтный seed
      // Используем тот же derivation path для восстановления кошелька, как и Phantom
      final keyData =
          await ed25519.ED25519_HD_KEY.derivePath("m/44'/501'/0'/0'", seed);
      _wallet = await web3.Keypair.fromSeed(Uint8List.fromList(keyData.key));
    } catch (e) {
      print("❌ Ошибка восстановления: $e");
    }
  }

  @override
  String? getMnemonic() {
    return _mnemonic;
  }

  @override
  Future<String?> connectWallet() async {
    try {
      final walletAddress = _wallet?.pubkey.toBase58();
      return walletAddress;
    } catch (e) {
      print("❌ Ошибка подключения: $e");
      return null;
    }
  }

  @override
  Map<String, dynamic> getDynamicPriorityFee(
      int amountLamports, int? networkLoad) {
    int maxLamports;
    String priorityLevel;

    if (networkLoad == null) {
      networkLoad = 30000; // Средний запасной вариант
    }

    if (amountLamports < 1e8) {
      // < 0.1 SOL
      maxLamports = 10000000 + networkLoad; // Базовая комиссия + загрузка сети
      priorityLevel = "medium";
    } else if (amountLamports < 1e9) {
      // 0.1 - 1 SOL
      maxLamports = 20000000 + networkLoad;
      priorityLevel = "high";
    } else {
      // > 1 SOL
      maxLamports = 50000000 + networkLoad;
      priorityLevel = "veryHigh";
    }
    return {
      'priorityLevelWithMaxLamports': {
        'maxLamports': maxLamports,
        'priorityLevel': priorityLevel
      }
    };
  }

  @override
  Future<void> disconnectWallet() async {
    try {
      _mnemonic = null;
      _wallet = null;
    } catch (e) {
      print("❌ Ошибка отключения: $e");
    }
  }

  @override
  Future<String?> signMessage(String message) async {
    try {
      // Проверяем наличие секретного ключа
      final seckey = _wallet?.seckey;
      if (seckey == null) {
        throw Exception("❌ Секретный ключ не найден.");
      }

      // Преобразуем сообщение в формат Uint8List
      final messageBytes = Uint8List.fromList(utf8.encode(message));

      // Используем ed25519_hd_key для получения ключа из seed
      final masterKeyData =
          await ed25519.ED25519_HD_KEY.getMasterKeyFromSeed(seckey);

      // Получаем приватный ключ для подписи (это IL из структуры KeyData)
      final privateKey = masterKeyData.key;

      // Используем pinenacl для подписания с приватным ключом
      final signingKey =
          nacl.SigningKey.fromSeed(Uint8List.fromList(privateKey));
      final signature = signingKey.sign(messageBytes);

      print("✅ Сообщение подписано: ${signature.signature.toString()}");
      return signature.signature.toString();
    } catch (e) {
      print("❌ Ошибка подписи: $e");
      return null;
    }
  }

  @override
  Future<double> getSolBalance(String address) async {
    try {
      final response = await _dio.post('/', data: {
        'jsonrpc': '2.0',
        'id': 1,
        'method': 'getBalance',
        'params': [
          address,
          {"commitment": "finalized"}
        ],
      });
      if (response.data['result'] != null) {
        final lamports = response.data['result']['value'];
        return lamports / 1e9;
      }
      return 0.0;
    } catch (e) {
      print("❌ Ошибка получения SOL баланса: $e");
      return 0.0;
    }
  }

  // Получаем баланс токена по mint (например, USDC)
  @override
  Future<double> getTokenBalance(String owner, String tokenMint) async {
    try {
      final response = await _dio.post('/', data: {
        'jsonrpc': '2.0',
        'id': 1,
        'method': 'getTokenAccountsByOwner',
        'params': [
          owner,
          {"mint": tokenMint},
          {"encoding": "jsonParsed"}
        ],
      });
      double total = 0.0;
      if (response.data['result'] != null) {
        final accounts = response.data['result']['value'] as List;
        for (var account in accounts) {
          final tokenAmount =
              account['account']['data']['parsed']['info']['tokenAmount'];
          final uiAmount = tokenAmount['uiAmount'];
          total += (uiAmount is num ? uiAmount.toDouble() : 0.0);
        }
      }
      return total;
    } catch (e) {
      print("❌ Ошибка получения токенового баланса: $e");
      return 0.0;
    }
  }

  @override
  Future<double> getBalance(String address) async {
    try {
      final response = await _dio.post('/', data: {
        'jsonrpc': '2.0',
        'id': 1,
        'method': 'getBalance',
        'params': [address],
      });

      print("Данные баланса от RPC: ${response.data}");

      if (response.data['result'] != null) {
        final lamports = response.data['result']['value'];
        print("Баланс в лампортах: $lamports");
        return lamports / 1e9;
      }
      return 0.0;
    } catch (e) {
      print("❌ Ошибка получения баланса: $e");
      return 0.0;
    }
  }

  @override
  Future<TransactionInfo?> getTransactionDetails(String signature) async {
    const url = 'https://api.mainnet-beta.solana.com';
    final body = json.encode({
      "jsonrpc": "2.0",
      "id": 1,
      "method": "getTransaction",
      "params": [
        signature,
        {"encoding": "json", "maxSupportedTransactionVersion": 0}
      ],
    });

    print('Отправляем запрос на $url с параметрами: $body');

    try {
      final response = await _dio.post(url,
          data: body,
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));

      print('Получен ответ с кодом: ${response.statusCode}');
      final transaction;
      if (response.statusCode == 200) {
        final data = response.data;
        transaction = data['result'];

        if (transaction == null) {
          print('Транзакция не найдена');
          return null;
        }

        print('Детали транзакции получены, разбираем...');

        // Извлекаем информацию о транзакции
        final blockTime = transaction['blockTime'] as int?;
        final date = blockTime != null
            ? DateTime.fromMillisecondsSinceEpoch(blockTime * 1000)
            : null;
        final transactionInfo = TransactionInfo.fromJson(transaction);
        print('Транзакция успешно обработана: ${transactionInfo.toJson()}');
        return transactionInfo;
//         final meta = transaction['meta'];
//         final fee = meta?['fee'] ?? 0;
//         final instructions = meta?['logMessages'] ?? [];
//         final preBalances = meta?['preBalances'] ?? [];
//         final postBalances = meta?['postBalances'] ?? [];
//
//         // Обработка токен-балансов (до и после)
//         final preTokenBalances = meta?['preTokenBalances'] ?? [];
//         final postTokenBalances = meta?['postTokenBalances'] ?? [];
// print("1111111 "+preTokenBalances.toString());
//         List<Map<String, dynamic>> parseTokenBalances(List balances) {
//           return balances.map((token) {
//             return {
//               'mint': token['mint'],
//               'owner': token['owner'],
//               'amount': token['uiTokenAmount']['uiAmountString'],
//             'programId': token['programId']
//
//           };
//           }).toList();
//         }
//
//         final result = {
//           'signature': signature,
//           'date': date?.toIso8601String(),
//           'fee': fee,
//           'instructions': instructions,
//           'preBalances': preBalances,
//           'postBalances': postBalances,
//           'preTokenBalances': parseTokenBalances(preTokenBalances),
//           'postTokenBalances': parseTokenBalances(postTokenBalances),
//         };
//
//         print('Транзакция успешно обработана: $result');
//
//         return result;
      } else {
        print('Ошибка HTTP: ${response.statusCode}, ответ: ${response.data}');
      }
    } on DioException catch (e) {
      print('Ошибка сети или сервера: ${e.message}');
      if (e.response != null) {
        print('Ответ сервера при ошибке: ${e.response?.data}');
      }
    } catch (e) {
      print('Неизвестная ошибка: $e');
    }

    print(
        'Не удалось получить информацию о транзакции, возвращаем пустой объект.');
    return null;
  }

  @override
  Future<List<Transaction>> getTransactionHistory(String walletAddress) async {
    const url = 'https://api.mainnet-beta.solana.com'; // URL Solana RPC

    final body = json.encode({
      "jsonrpc": "2.0",
      "id": 1,
      "method": "getSignaturesForAddress",
      "params": [
        walletAddress,
        {"limit": 40}
      ],
      // получаем последние 10 транзакций
    });

    try {
      final response = await _dio.post(url,
          data: body,
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));

      if (response.statusCode == 200) {
        final data = response.data;
        final transactions = data['result'];

        if (transactions != null) {
          // Преобразуем список карт в список объектов Transaction
          return transactions
              .map<Transaction>((tx) => Transaction.fromMap(tx))
              .toList();
        } else {
          print('Нет транзакций для этого адреса');
          return [];
        }
      } else {
        print(
            'Ошибка при получении истории транзакций, статус: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Ошибка: $e');
      return [];
    }
  }
}

enum TransactionVersionType {
  legacy,
  v0,
}

class TransactionVersion {
  final TransactionVersionType type;
  final int? version;

  TransactionVersion.legacy()
      : type = TransactionVersionType.legacy,
        version = null;

  TransactionVersion.v0(this.version) : type = TransactionVersionType.v0;

  /// Определяет версию транзакции по первому байту бинарных данных.
  factory TransactionVersion.fromByteArray(Uint8List data) {
    if (data.isEmpty) {
      throw Exception('Данные транзакции пусты');
    }
    final byte = data.first;
    final maskedPrefix = byte & 0x7F;
    if (maskedPrefix == byte) {
      return TransactionVersion.legacy();
    } else if (maskedPrefix == 0) {
      return TransactionVersion.v0(0);
    } else {
      throw UnimplementedError('Версия $maskedPrefix не поддерживается');
    }
  }

  @override
  String toString() {
    return type == TransactionVersionType.legacy ? 'legacy' : 'v$version';
  }
}
