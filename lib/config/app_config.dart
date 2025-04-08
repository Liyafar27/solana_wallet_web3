class AppConfig {
  static const String appName = 'SOL Fibonacci Bot';
  static const String tradingPair = 'SOLUSDT';
  
  // Fibonacci levels
  static const List<double> fiboLevels = [0.236, 0.382, 0.5, 0.618, 0.786];
  
  // Trading settings
  static const double defaultTradeAmount = 0.1; // SOL
  static const int priceUpdateInterval = 5; // seconds
} 