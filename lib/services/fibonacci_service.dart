// class FibonacciService {
//   static const List<double> fibLevels = [0, 0.236, 0.382, 0.5, 0.618, 0.786, 1];
//
//   List<double> calculateFibLevels(double high, double low) {
//     final difference = high - low;
//     return fibLevels.map((level) => low + difference * level).toList();
//   }
//
//   double findNearestFibLevel(double price, List<double> levels) {
//     double nearestLevel = levels[0];
//     double minDistance = (price - levels[0]).abs();
//
//     for (final level in levels) {
//       final distance = (price - level).abs();
//       if (distance < minDistance) {
//         minDistance = distance;
//         nearestLevel = level;
//       }
//     }
//
//     return nearestLevel;
//   }
//
//   bool isRetracementComplete(double currentPrice, double high, double low) {
//     final levels = calculateFibLevels(high, low);
//     final retracement = (high - currentPrice) / (high - low);
//
//     // Consider retracement complete if price reaches 0.618 level
//     return retracement >= 0.618;
//   }
//
//   bool isPriceAtSupport(double currentPrice, List<double> levels) {
//     const tolerance = 0.005; // 0.5% tolerance
//
//     for (final level in levels) {
//       if ((currentPrice - level).abs() / level <= tolerance) {
//         return true;
//       }
//     }
//
//     return false;
//   }
//
//   bool isPriceAtResistance(double currentPrice, List<double> levels) {
//     const tolerance = 0.005; // 0.5% tolerance
//
//     for (final level in levels) {
//       if ((currentPrice - level).abs() / level <= tolerance) {
//         return true;
//       }
//     }
//
//     return false;
//   }
//
//   Map<String, double> calculateTradingLevels(double currentPrice, double high, double low) {
//     final levels = calculateFibLevels(high, low);
//     final nearestLevel = findNearestFibLevel(currentPrice, levels);
//
//     // Find next resistance and support levels
//     double resistance = high;
//     double support = low;
//
//     for (final level in levels) {
//       if (level > currentPrice && level < resistance) {
//         resistance = level;
//       }
//       if (level < currentPrice && level > support) {
//         support = level;
//       }
//     }
//
//     return {
//       'resistance': resistance,
//       'support': support,
//       'nearest': nearestLevel,
//     };
//   }
//
//   bool shouldEnterTrade(
//     double currentPrice,
//     double high,
//     double low,
//     String direction, // 'buy' or 'sell'
//   ) {
//     final levels = calculateFibLevels(high, low);
//     final tradingLevels = calculateTradingLevels(currentPrice, high, low);
//
//     if (direction == 'buy') {
//       // Buy conditions:
//       // 1. Price is at support
//       // 2. Retracement is complete
//       return isPriceAtSupport(currentPrice, levels) &&
//              isRetracementComplete(currentPrice, high, low);
//     } else {
//       // Sell conditions:
//       // 1. Price is at resistance
//       // 2. Price is above nearest Fibonacci level
//       return isPriceAtResistance(currentPrice, levels) &&
//              currentPrice > tradingLevels['nearest']!;
//     }
//   }
//
//   double calculateStopLoss(
//     double entryPrice,
//     double high,
//     double low,
//     String direction, // 'buy' or 'sell'
//   ) {
//     final levels = calculateFibLevels(high, low);
//
//     if (direction == 'buy') {
//       // Set stop loss at the next lower Fibonacci level
//       for (int i = levels.length - 1; i >= 0; i--) {
//         if (levels[i] < entryPrice) {
//           return levels[i];
//         }
//       }
//       return low;
//     } else {
//       // Set stop loss at the next higher Fibonacci level
//       for (final level in levels) {
//         if (level > entryPrice) {
//           return level;
//         }
//       }
//       return high;
//     }
//   }
//
//   double calculateTakeProfit(
//     double entryPrice,
//     double high,
//     double low,
//     String direction, // 'buy' or 'sell'
//   ) {
//     final levels = calculateFibLevels(high, low);
//
//     if (direction == 'buy') {
//       // Set take profit at the next higher Fibonacci level
//       for (final level in levels) {
//         if (level > entryPrice) {
//           return level;
//         }
//       }
//       return high;
//     } else {
//       // Set take profit at the next lower Fibonacci level
//       for (int i = levels.length - 1; i >= 0; i--) {
//         if (levels[i] < entryPrice) {
//           return levels[i];
//         }
//       }
//       return low;
//     }
//   }
// }