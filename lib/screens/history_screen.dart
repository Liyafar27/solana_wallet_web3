import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/history_transaction_bloc/history_transaction_bloc.dart';
import 'package:sol_fib_bot/blocs/wallet/wallet_bloc.dart';
import 'package:sol_fib_bot/core/extensions.dart';

class TradeHistoryItem {
  final String type;
  final double price;
  final double amount;
  final DateTime timestamp;
  final double profit;

  TradeHistoryItem({
    required this.type,
    required this.price,
    required this.amount,
    required this.timestamp,
    required this.profit,
  });
}

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late final HistoryTransactionBloc bloc;

  @override
  void initState() {
    final walletState = context.read<WalletBloc>().state;

    if (walletState is WalletConnected) {
      final walletAddress = walletState.wallet.address;

      context.read<HistoryTransactionBloc>()
        .add(LoadTransactionHistory(walletAddress));
    } else {
      context.read<HistoryTransactionBloc>().add(const ResetTransactionHistory());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Transaction history',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: BlocBuilder<HistoryTransactionBloc, HistoryTransactionState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Colors.redAccent.withValues(alpha: 0.15),
                        width: 2),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.redAccent.withValues(alpha: 0.85),
                        size: 60,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'No Wallet Connected',
                        style: TextStyle(
                          fontSize: 24,
                          // fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Please connect a wallet to view your transaction history.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (transactions, transactionDetails,
                selectedTransactionIndex, amountReceived, amountSent) {
              return ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  final details = transactionDetails;
                  final transactionTime = DateTime.fromMillisecondsSinceEpoch(
                      transaction['blockTime'] * 1000);
                  final formattedTime = transactionTime.formatDateTime();
                  final status =
                      transaction['confirmationStatus'] ?? 'Неизвестно';
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        final isSame = selectedTransactionIndex == index;
                        context.read<HistoryTransactionBloc>().add(
                              SelectTransaction(isSame ? 20 : index),
                            );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  status == 'finalized'
                                      ? Icons.check_circle_outline
                                      : Icons.error_outline,
                                  color: status == 'finalized'
                                      ? Colors.green
                                      : Colors.red,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Tx: ${transaction['signature']}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Icon(
                                  selectedTransactionIndex == index
                                      ? Icons.expand_less
                                      : Icons.expand_more,
                                  color: Colors.grey[600],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            AnimatedCrossFade(
                              duration: const Duration(milliseconds: 200),
                              crossFadeState:
                                  selectedTransactionIndex == index
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                              firstChild: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Status: $status'),
                                  Text('Date: $formattedTime'),
                                  Text(
                                      'Fee: ${details?.meta.fee.toSol(precision: 9)} SOL'),
                                  const SizedBox(height: 8),
                                  if (amountSent != null &&
                                      amountReceived != null)
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                        children: [
                                          const TextSpan(text: 'SWAPPED '),
                                          TextSpan(
                                            text: amountReceived,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          const TextSpan(text: ' → '),
                                          TextSpan(
                                            text: amountSent,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              secondChild: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Status: $status'),
                                  Text('Date: $formattedTime'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
