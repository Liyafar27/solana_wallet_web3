class PriceModel {
  final double currentPrice;
  final double high24h;
  final double low24h;
  final double volume24h;
  final DateTime timestamp;

  PriceModel({
    required this.currentPrice,
    required this.high24h,
    required this.low24h,
    required this.volume24h,
    required this.timestamp,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    return PriceModel(
      currentPrice: double.parse(json['price']),
      high24h: double.parse(json['high24h']),
      low24h: double.parse(json['low24h']),
      volume24h: double.parse(json['volume24h']),
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp']),
    );
  }
} 