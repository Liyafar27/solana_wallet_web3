import 'dart:developer';

import 'package:sol_fib_bot/domain/models/history_transactions/token_balance.dart';

import 'package:sol_fib_bot/core/tokens_constants.dart';

({String amountSent, String amountReceived})? analyzeTokenChanges(
    List<TokenBalance> preTokenBalances, List<TokenBalance> postTokenBalances) {
  List<String> changes = [];
  Map<String, double> receivedByMint = {};
  Map<String, double> sentByMint = {};
  double solAmount = 0.0; // Сумма SOL, которая была свапнута
  double usdcAmount = 0.0; // Сумма USDC, которая была свапнута

  if (preTokenBalances.isEmpty && postTokenBalances.isEmpty) {
    print('⚠️ Оба списка пустые, нечего анализировать.');
    return null;
  }

  if (preTokenBalances.length != postTokenBalances.length) {
    print(
        '⚠️ Внимание! Длины списков pre/post различаются. Это может привести к ошибкам!');
  }
  String messageTransaction = '';
  String amountSent = '';
  String amountReceived = '';

  for (int i = 0;
      i < preTokenBalances.length && i < postTokenBalances.length;
      i++) {
    var preBalance = preTokenBalances[i];
    var postBalance = postTokenBalances[i];

    print('➡️ Анализируем индекс $i');
    print('   preBalance: $preBalance');
    print('   postBalance: $postBalance');

    var preAmount = preBalance.uiTokenAmount.uiAmount;
    var postAmount = postBalance.uiTokenAmount.uiAmount;

    print('   preAmount: $preAmount, postAmount: $postAmount');

    if (preAmount == null || postAmount == null) {
      print('⚠️ Один из балансов null, пропускаем...');
      continue;
    }

    if (preAmount != postAmount) {
      var mintAddress = preBalance.mint;
      var accountIndex = preBalance.accountIndex;

      if (postAmount > preAmount) {
        var received = postAmount - preAmount;
        if (mintAddress == 'So11111111111111111111111111111111111111112' ||
            (mintAddress == 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v'))
          amountSent =
              ' - ${received.toStringAsFixed(2)} ${getTokenName(mintAddress)}';
        if (mintAddress == 'So11111111111111111111111111111111111111112')
          messageTransaction +=
              ' Поменяли  на сумму -  ${received.toStringAsFixed(2)} ${getTokenName(mintAddress)}';
        if (mintAddress == 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v' &&
            accountIndex == 1)
          messageTransaction +=
              ' Поменяли  на сумму -  ${received.toStringAsFixed(2)} ${getTokenName(mintAddress)}';
        changes.add(
            '✅ Account $accountIndex получил ${received.toStringAsFixed(2)} токенов ${getTokenName(mintAddress)}');
        // receivedByMint[mintAddress] = (receivedByMint[mintAddress] ?? 0) + received;
        // Добавляем логику для расчета количества полученного USDC
        if (mintAddress == "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v") {
          usdcAmount += received;
          log(usdcAmount.toString());
        }
      } else {
        var sent = preAmount - postAmount;
        if (mintAddress == 'So11111111111111111111111111111111111111112')
          messageTransaction +=
              ' получили    ${sent.toStringAsFixed(2)}  ${getTokenName(mintAddress)}';

        if (mintAddress == 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v')
          messageTransaction +=
              ' получили    + ${sent.toStringAsFixed(2)}  ${getTokenName(mintAddress)}';
        if (mintAddress == 'So11111111111111111111111111111111111111112' ||
            (mintAddress == 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v'))
          amountReceived =
              '+ ${sent.toStringAsFixed(2)}  ${getTokenName(mintAddress)}';

        changes.add(
            '🚀 Account $accountIndex отправил $sent токенов ${getTokenName(mintAddress)}');
        sentByMint[mintAddress] = (sentByMint[mintAddress] ?? 0) + sent;
        // Добавляем логику для расчета количества отправленного SOL
        if (mintAddress == "So11111111111111111111111111111111111111112") {
          solAmount += sent;
        }
      }
    } else {
      print('🔹 Баланс не изменился для accountIndex $i');
    }
  }
  print(messageTransaction);
  print('$amountSent  $amountReceived');

  // Логика для проверки swapделаем логику сследующую если аккаунт 1  отправил токенов USDC  это SOL на USDC  если аккаунт 1  получил токенов USDC это USDC ↔ SOL. но при этом надо вытащить  из логов аккаунт 4 это и будет сумма  солов которые свапнули и сумма долларов которые свапнули сможешь это в логику небоольшую вынести с логами окей?

  if (receivedByMint.isNotEmpty && sentByMint.isNotEmpty) {
    final receivedMint = receivedByMint.keys.first;
    final sentMint = sentByMint.keys.first;
    final receivedAmount = receivedByMint[receivedMint]!;
    final sentAmount = sentByMint[sentMint]!;

    // Добавим условие для выявления swap между SOL и USDC
    if (receivedMint != sentMint) {
      // Проверка на конкретные mint-адреса SOL и USDC
      if (receivedMint == "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v" &&
          sentMint == "So11111111111111111111111111111111111111112") {
        print('🔄 Предположительно выполнен swap:');
        print(
            '   Обменяли $sentAmount токенов SOL на $receivedAmount токенов USDC');
        changes.add(
            '🔄 Предположительно выполнен swap: Обменяли $sentAmount токенов SOL на $receivedAmount токенов USDC');
      }
    }
  }

  // Анализируем, если было несколько токенов SOL и USDC
  if (usdcAmount > 0 && solAmount > 0) {
    print('🔄 Сумма обмена:');
    print('   Обменяли $solAmount SOL на $usdcAmount USDC');
    changes.add('🔄 Сумма обмена: Обменяли $solAmount SOL на $usdcAmount USDC');
  }

  // Анализируем, если было несколько токенов SOL и USDC
  if (usdcAmount > 0 && solAmount > 0) {
    print('🔄 Сумма обмена:');
    print('   Обменяли $solAmount SOL на $usdcAmount USDC');
    changes.add('🔄 Сумма обмена: Обменяли $solAmount SOL на $usdcAmount USDC');
  }

  if (changes.isEmpty) {
    print('📭 Изменений токенов не обнаружено.');
  } else {
    print('📈 Обнаружены изменения:');
    for (var change in changes) {
      print('   ➡️ $change');
    }
  }

  print('🔚 Анализ завершён.');
  return (
    amountSent: amountSent,
    amountReceived: amountReceived,
  );
}
