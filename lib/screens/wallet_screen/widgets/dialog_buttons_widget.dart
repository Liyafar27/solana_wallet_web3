import 'package:flutter/material.dart';
import 'package:sol_fib_bot/screens/wallet_screen/widgets/auto_bot_widget.dart';
import 'package:sol_fib_bot/screens/wallet_screen/widgets/swap_widget.dart';
import 'package:sol_fib_bot/screens/wallet_screen/widgets/transfer_widget.dart';


class DialogButtonsWidget extends StatelessWidget {
  const DialogButtonsWidget({Key? key}) : super(key: key);

  void _showDialog(BuildContext context, Widget dialogWidget, double opacity) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28.0))),
      constraints:
      const BoxConstraints(minHeight: 300, minWidth: double.infinity),
      backgroundColor: Colors.blue.shade500.withValues(alpha: opacity),
      isScrollControlled: true,
      builder: (context) => dialogWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget dialogButton(String label, VoidCallback onPressed) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
        onPressed: onPressed,
        child: Text(label,  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: Colors.lightBlue),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dialogButton('SWAP', () => _showDialog(context, SwapWidget(), 0.6)),
        const SizedBox(width: 10),
        dialogButton('TRANSFER', () => _showDialog(context, TransferWidget(), 0.6)),
        const SizedBox(width: 10),
        dialogButton('AUTO BOT', () => _showDialog(context, AutoBotWidget(), 0.8)),
      ],
    );
  }
}
