class FiboLevels {
  final double high;
  final double low;
  final Map<double, double> levels;

  FiboLevels({
    required this.high,
    required this.low,
  }) : levels = _calculateLevels(high, low);

  static Map<double, double> _calculateLevels(double high, double low) {
    final difference = high - low;
    return {
      0.236: high - (difference * 0.236),
      0.382: high - (difference * 0.382),
      0.5: high - (difference * 0.5),
      0.618: high - (difference * 0.618),
      0.786: high - (difference * 0.786),
    };
  }

  double getNearestLevel(double currentPrice) {
    return levels.entries
        .reduce((a, b) =>
            (currentPrice - a.value).abs() < (currentPrice - b.value).abs()
                ? a
                : b)
        .key;
  }
} 