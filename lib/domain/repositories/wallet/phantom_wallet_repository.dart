abstract class PhantomRepository {
  Future<void> generateNewWallet();

  Future<void> restoreWallet(String mnemonic);

  String? getMnemonic();

  Future<String?> connectWallet();

  Future<void> disconnectWallet();


  Future<void> getTransactionHistory(String walletAddress);

  Future<String?> signMessage(String message);
}
