import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/wallet/wallet_bloc.dart';
import 'package:sol_fib_bot/screens/wallet_screen/widgets/mnemonic_dialog.dart';

import 'widgets/dialog_buttons_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  late final WalletBloc bloc;
  bool _dialogShown = false;

  @override
  void initState() {
    super.initState();
    bloc = context.read<WalletBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,

        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Wallet info',style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<WalletBloc, WalletState>(
            builder: (context, state) {
              if (state is WalletLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is WalletConnected) {
                return _buildWalletUI(context, state);
              }
              if (state is WalletError) {
                return Center(child: Text("Ошибка: ${state.message}"));
              }
              return _buildStartUI(context);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildWalletUI(BuildContext context, WalletConnected state) {
    final wallet = state.wallet;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state is WalletConnected && state.mnemonic != null && !_dialogShown) {
        _dialogShown = true; // чтобы не показывать снова при rebuild

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => MnemonicDialog(
            mnemonic: state.mnemonic!,
            onConfirm: () {
              Navigator.of(context).pop();
              // Тут можешь добавить ивент или сбросить мнемоник из стейта
            },
          ),
        );
      }
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          color: Colors.blue.withValues(alpha: 0.1),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Address',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w800)),
                const SizedBox(height: 8),
                Text(
                  (state.wallet.address),
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text('Balance',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w800)),
                const SizedBox(height: 8),
                Text(
                  "${state.wallet.solBalance.toStringAsFixed(2)} SOL",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),
                Text(
                  '${wallet.usdcBalance.toStringAsFixed(2)} USDC',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                ),
                const SizedBox(height: 16),
                _buildSwapButton(context),
                const SizedBox(height: 16),
                // SwapWidget(swapBloc: context.read<WalletBloc>())
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        const DialogButtonsWidget(),
        const SizedBox(height: 24),
        Container(
          margin: const EdgeInsets.all(16),
          child: OutlinedButton(
            onPressed: () =>
                context.read<WalletBloc>().add(const DisconnectWallet()),
            child: const Text(
              'Exit Wallet',
              style:  TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.redAccent),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSwapButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          context.read<WalletBloc>().add(const SwapSolToUsdt(0.01));
        },
        child: const Text(
          "🔄 Обменять 1 SOL на USDC",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _buildStartUI(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () =>
                context.read<WalletBloc>().add(const GenerateNewWallet()),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 5,
            ),
            child: const Text(
              "Create New Wallet",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => _showMnemonicDialog(context),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: const BorderSide(width: 2, color: Colors.blueAccent),
            ),
            child: const Text(
              "🔑 Access Wallet \n (using passphrase)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showMnemonicDialog(BuildContext context) {
    final TextEditingController mnemonicController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            "Enter Mnemonic Phrase",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: TextField(
            controller: mnemonicController,
            decoration: const InputDecoration(
              hintText: "Enter all words here...",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final mnemonic = mnemonicController.text.trim();
                if (mnemonic.isNotEmpty) {
                  context.read<WalletBloc>().add(RestoreWallet(mnemonic));
                  Navigator.pop(ctx);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Confirm",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}

