import 'package:flutter/material.dart';

class AutoBotWidget extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _amountController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Amount',
              labelStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: const Color(0xFF121212),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text('MAX', style: TextStyle(color: Colors.blueAccent)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          IconButton(
            icon: const Icon(Icons.swap_vert, color: Colors.blueAccent, size: 35),
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32), // Закругление углов
                  side:
                  const BorderSide(color: Colors.white, width: 1),)
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text('Enable AutoBot',
                  style: TextStyle(color: Colors.blue, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
