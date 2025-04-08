import 'package:equatable/equatable.dart';
import 'package:sol_fib_bot/domain/models/chart_data.dart';

abstract class ChartState extends Equatable {
  const ChartState();

  @override
  List<Object?> get props => [];
}

class ChartInitial extends ChartState {}

class ChartLoading extends ChartState {}

class ChartLoaded extends ChartState {
  final ChartData data;
  final String currentInterval;
  final String symbol;

  const ChartLoaded({
    required this.data,
    required this.currentInterval,
    required this.symbol,
  });

  @override
  List<Object?> get props => [data, currentInterval, symbol];

  ChartLoaded copyWith({
    ChartData? data,
    String? currentInterval,
    String? symbol,
  }) {
    return ChartLoaded(
      data: data ?? this.data,
      currentInterval: currentInterval ?? this.currentInterval,
      symbol: symbol ?? this.symbol,
    );
  }
}

class ChartError extends ChartState {
  final String message;

  const ChartError(this.message);

  @override
  List<Object?> get props => [message];
} 