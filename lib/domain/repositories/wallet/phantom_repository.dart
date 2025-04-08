import 'package:sol_fib_bot/domain/models/history_transactions/transaction_info.dart';

import 'package:sol_fib_bot/domain/models/history_transactions/transaction.dart';

abstract class PhantomRepository {
  Future<void> generateNewWallet();

  Future<void> restoreWallet(String mnemonic);

  String? getMnemonic();

  Future<String?> connectWallet();

  Future<void> disconnectWallet();

  Future<String?> signMessage(String message);

  Future<double> getSolBalance(String address);

  Future<double> getTokenBalance(String owner, String tokenMint);

  Future<double> getBalance(String address);

  Future<int?> getNetworkLoad();

  Map<String, dynamic> getDynamicPriorityFee(int amountLamports,
      int? networkLoad);

  Future<List<Transaction>> getTransactionHistory(String walletAddress);
  Future<TransactionInfo?> getTransactionDetails(String signature);

  Future<void> swapSolToUsdcWithInstructions(double amount);
  Future<void> swapUsdcToSolWithInstructions(double amount);


}
