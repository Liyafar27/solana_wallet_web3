import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/wallet/wallet_bloc.dart';

class SwapWidget extends StatefulWidget {
  @override
  _SwapWidgetState createState() => _SwapWidgetState();
}

class _SwapWidgetState extends State<SwapWidget> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  double _exchangeRate = 1.2;
  String _fromCurrency = 'SOL';
  String _toCurrency = 'USDC';

  void _updateToValue(String value) {
    double amount = double.tryParse(value) ?? 0;
    _toController.text = (amount * _exchangeRate).toStringAsFixed(2);
  }

  void _swapCurrencies() {
    setState(() {
      _exchangeRate = 1 / _exchangeRate;
      String tempValue = _fromController.text;
      _fromController.text = _toController.text;
      _toController.text = tempValue;

      String tempCurrency = _fromCurrency;
      _fromCurrency = _toCurrency;
      _toCurrency = tempCurrency;

    });

  }

  void _setMaxValue() {
    setState(() {
      _fromController.text = '10';
      _updateToValue('10');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _fromController,
                  keyboardType: TextInputType.number,
                  onChanged: _updateToValue,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'You pay',
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: const Color(0xFF121212),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(minWidth: 100),
                    suffixIcon: TextButton(
                      onPressed: () {
                        setState(() {
                          _setMaxValue();
                        });
                      },
                      child: _fromCurrency == 'SOL'
                          ? const Text("MAX", style: TextStyle(color: Colors.blue))
                          : const SizedBox(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                  width: 50,
                  child: Text(_fromCurrency,
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w700))),
            ],
          ),
          const SizedBox(height: 10),
          IconButton(
            icon: const Icon(Icons.cached_sharp,
                color: Colors.blueAccent, size: 35),
            onPressed: _swapCurrencies,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _toController,
                  keyboardType: TextInputType.number,
                  enabled: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'You receive',
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: const Color(0xFF121212),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    constraints: const BoxConstraints(minWidth: 100),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 50,
                child: Text(_toCurrency,
                    style: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              )
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {

              _fromController.text!=''||_fromController.text!='0'?context.read<WalletBloc>().add(     _fromCurrency == 'SOL'?SwapSolToUsdt(double.parse(_fromController.text)):
           SwapUsdtToSol(double.parse(_fromController.text))):null ;
              Navigator.pop(context);            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32), // Закругление углов
                side: const BorderSide(color: Colors.white, width: 1),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text('Swap Now',
                  style: TextStyle(color: Colors.blue, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
