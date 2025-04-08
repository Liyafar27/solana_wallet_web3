import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';
import 'package:sol_fib_bot/domain/repositories/chart_repositories/chart_repository.dart';

part 'chart_data_bloc.freezed.dart';

@freezed
class ChartDataEvent with _$ChartDataEvent {
  const factory ChartDataEvent.load({
    required String symbol,
    required String interval,
    required int limit,
    required int rsiPeriod,
  }) = LoadChartDataEvent;
}

@freezed
class ChartDataState with _$ChartDataState {
  const factory ChartDataState.initial() = ChartDataInitial;

  const factory ChartDataState.loading() = ChartDataLoading;

  const factory ChartDataState.loaded({
    required List<CandleData> candles,
    required List<RSIData> rsiData,
    required Map<String, double> fbbLevels,
  }) = ChartDataLoaded;

  const factory ChartDataState.error({required String message}) =
      ChartDataError;
}

class ChartDataBloc extends Bloc<ChartDataEvent, ChartDataState> {
  final ChartRepository repository;

  ChartDataBloc({required this.repository})
      : super(const ChartDataState.initial()) {
    on<LoadChartDataEvent>(_onLoadChartData);
  }

  Future<void> _onLoadChartData(
    LoadChartDataEvent event,
    Emitter<ChartDataState> emit,
  ) async {
    try {
      final candles = await repository.fetchCandleData(
          event.symbol, event.interval, event.limit);
      final rsiData = await repository.calculateRSI(candles);
      final fbbLevels = await repository.calculateFBB(candles);

      emit(ChartDataState.loaded(
        candles: candles,
        rsiData: rsiData,
        fbbLevels: fbbLevels,
      ));
    } catch (e) {
      emit(ChartDataState.error(message: e.toString()));
    }
  }
}
