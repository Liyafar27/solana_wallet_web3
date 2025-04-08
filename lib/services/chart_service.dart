// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:sol_fib_bot/domain/models/chart_data.dart';
// import 'binance_service.dart';
// import 'fibonacci_service.dart';
//
// class ChartService {
//   final BinanceService _binanceService;
//   final FibonacciService _fibonacciService;
//
//   ChartService({
//     required BinanceService binanceService,
//     required FibonacciService fibonacciService,
//   })  : _binanceService = binanceService,
//         _fibonacciService = fibonacciService;
//
//   Future<ChartData> fetchChartData(String symbol, String interval) async {
//     try {
//       // В реальном приложении здесь будет запрос к Binance API для получения исторических данных
//       // Сейчас используем моковые данные для примера
//       final currentPrice = await _binanceService.getCurrentPrice(symbol);
//       await _binanceService.getBollingerBands();
//       final fbb =  await _binanceService.getFibonacciBollingerBands();
//       print("Basis: ${fbb['basis']}");
//       print("Upper 6 (1.0): ${fbb['upper_6']}");
//       print("Lower 6 (1.0): ${fbb['lower_6']}");
//       print("Upper 5 (1.0): ${fbb['upper_5']}");
//       print("Lower 5 (1.0): ${fbb['lower_5']}");
//       final List<FlSpot> spots = List.generate(
//         50,
//         (index) => FlSpot(
//           index.toDouble(),
//           currentPrice + (index - 25) * 0.1,
//         ),
//       );
//
//       double minY = double.infinity;
//       double maxY = double.negativeInfinity;
//
//       for (var spot in spots) {
//         if (spot.y < minY) minY = spot.y;
//         if (spot.y > maxY) maxY = spot.y;
//       }
//
//       final fibLevels = _generateFibLevels(maxY, minY);
//
//       return ChartData(
//         priceData: spots,
//         fibLevels: fibLevels,
//         minY: minY * 0.99,
//         maxY: maxY * 1.01,
//         startTime: DateTime.now().subtract(const Duration(hours: 24)),
//         endTime: DateTime.now(),
//       );
//     } catch (e) {
//       throw Exception('Failed to fetch chart data: $e');
//     }
//   }
//
//   List<LineChartBarData> _generateFibLevels(double high, double low) {
//     final levels = _fibonacciService.calculateFibLevels(high, low);
//     final colors = [
//       Colors.red,
//       Colors.orange,
//       Colors.yellow,
//       Colors.green,
//       Colors.blue,
//       Colors.indigo,
//       Colors.purple,
//     ];
//
//     return List.generate(
//       levels.length,
//       (index) => LineChartBarData(
//         spots: [
//           FlSpot(0, levels[index]),
//           FlSpot(49, levels[index]),
//         ],
//         isCurved: false,
//         color: colors[index],
//         barWidth: 1,
//         dotData: FlDotData(show: false),
//         belowBarData: BarAreaData(show: false),
//       ),
//     );
//   }
//
//   ChartData updateChartData(
//     ChartData currentData,
//     double newPrice,
//     DateTime timestamp,
//   ) {
//     final List<FlSpot> updatedSpots = List.from(currentData.priceData);
//
//     // Сдвигаем все точки влево и добавляем новую
//     if (updatedSpots.length >= 50) {
//       updatedSpots.removeAt(0);
//     }
//     updatedSpots.add(FlSpot(49, newPrice));
//
//     // Обновляем min/max
//     double minY = double.infinity;
//     double maxY = double.negativeInfinity;
//
//     for (var spot in updatedSpots) {
//       if (spot.y < minY) minY = spot.y;
//       if (spot.y > maxY) maxY = spot.y;
//     }
//
//     final fibLevels = _generateFibLevels(maxY, minY);
//
//     return currentData.copyWith(
//       priceData: updatedSpots,
//       fibLevels: fibLevels,
//       minY: minY * 0.99,
//       maxY: maxY * 1.01,
//       endTime: timestamp,
//     );
//   }
// }