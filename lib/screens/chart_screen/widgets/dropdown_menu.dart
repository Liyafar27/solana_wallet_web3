import 'package:flutter/material.dart';

class DropdownMenuChart extends StatelessWidget {
  final List<String> symbols;
  final String selectedSymbol;
  final ValueChanged onChanged;

  const DropdownMenuChart({
    super.key,
    required this.symbols,
    required this.selectedSymbol,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedSymbol,
      dropdownColor: Colors.black,
      style: const TextStyle(color: Colors.white),
      underline: Container(height: 2, color: Colors.blue),
      items: symbols.map((symbol) {
        return DropdownMenuItem(
          value: symbol,
          child: Text(symbol, style: const TextStyle(color: Colors.white)),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}