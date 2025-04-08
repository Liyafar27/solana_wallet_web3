import 'package:equatable/equatable.dart';

abstract class ChartEvent extends Equatable {
  const ChartEvent();

  @override
  List<Object?> get props => [];
}

class LoadChartData extends ChartEvent {
  final String symbol;
  final String interval;

  const LoadChartData({
    required this.symbol,
    required this.interval,
  });

  @override
  List<Object?> get props => [symbol, interval];
}

class UpdateChartData extends ChartEvent {
  final double price;
  final DateTime timestamp;

  const UpdateChartData({
    required this.price,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [price, timestamp];
}

class ChangeTimeframe extends ChartEvent {
  final String interval;

  const ChangeTimeframe(this.interval);

  @override
  List<Object?> get props => [interval];
}

class UpdateFibonacciLevels extends ChartEvent {
  final double high;
  final double low;

  const UpdateFibonacciLevels({
    required this.high,
    required this.low,
  });

  @override
  List<Object?> get props => [high, low];
} 