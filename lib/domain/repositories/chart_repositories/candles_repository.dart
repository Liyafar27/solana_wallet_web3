import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';

abstract class CandlesRepository {
  Future<List<CandleData>> getCandles({
    required String symbol,
    required String interval,
    required int limit,
  });
}
