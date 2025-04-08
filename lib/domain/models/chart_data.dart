import 'package:fl_chart/fl_chart.dart';

class ChartData {
  final List<FlSpot> priceData;
  final List<LineChartBarData> fibLevels;
  final double minY;
  final double maxY;
  final DateTime startTime;
  final DateTime endTime;

  ChartData({
    required this.priceData,
    required this.fibLevels,
    required this.minY,
    required this.maxY,
    required this.startTime,
    required this.endTime,
  });

  ChartData copyWith({
    List<FlSpot>? priceData,
    List<LineChartBarData>? fibLevels,
    double? minY,
    double? maxY,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return ChartData(
      priceData: priceData ?? this.priceData,
      fibLevels: fibLevels ?? this.fibLevels,
      minY: minY ?? this.minY,
      maxY: maxY ?? this.maxY,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }
} 