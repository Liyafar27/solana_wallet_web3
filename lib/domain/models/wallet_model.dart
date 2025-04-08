import 'package:equatable/equatable.dart';

class WalletInfo extends Equatable {
  final String address;
  final double? solBalance;   // Баланс в SOL
  final double? usdcBalance;  // Баланс в USDC
  final bool isConnected;
  final String network;      // 'mainnet' или 'devnet'
  final bool isBalanceLoading; // Флаг загрузки баланса

  const WalletInfo({
    required this.address,
    required this.solBalance,
    required this.usdcBalance,
    required this.isConnected,
    required this.network,
    required this.isBalanceLoading,
  });

  WalletInfo copyWith({
    String? address,
    double? solBalance,
    double? usdcBalance,
    bool? isConnected,
    String? network,
    bool? isBalanceLoading,
  }) {
    return WalletInfo(
      address: address ?? this.address,
      solBalance: solBalance ?? this.solBalance,
      usdcBalance: usdcBalance ?? this.usdcBalance,
      isConnected: isConnected ?? this.isConnected,
      network: network ?? this.network,
      isBalanceLoading: isBalanceLoading ?? this.isBalanceLoading,
    );
  }

  @override
  List<Object?> get props => [address, solBalance, usdcBalance, isConnected, network, isBalanceLoading];
}
