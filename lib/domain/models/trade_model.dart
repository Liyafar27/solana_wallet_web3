import 'package:equatable/equatable.dart';

class Trade extends Equatable {
  final String id;
  final String type; // 'buy' or 'sell'
  final double price;
  final double amount;
  final DateTime timestamp;
  final double profit;
  final String symbol;
  final String status;

  const Trade({
    required this.id,
    required this.type,
    required this.price,
    required this.amount,
    required this.timestamp,
    this.profit = 0.0,
    required this.symbol,
    required this.status,
  });

  @override
  List<Object?> get props => [id, type, price, amount, timestamp, profit, symbol, status];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'price': price,
      'amount': amount,
      'timestamp': timestamp.toIso8601String(),
      'profit': profit,
      'symbol': symbol,
      'status': status,
    };
  }

  factory Trade.fromJson(Map<String, dynamic> json) {
    return Trade(
      id: json['id'],
      type: json['type'],
      price: json['price'].toDouble(),
      amount: json['amount'].toDouble(),
      timestamp: DateTime.parse(json['timestamp']),
      profit: json['profit']?.toDouble() ?? 0.0,
      symbol: json['symbol'],
      status: json['status'],
    );
  }
} 