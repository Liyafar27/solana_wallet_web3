
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';

abstract class CandlesService {
  Future<List<CandleData>> fetchCandles({
    required String symbol,
    required String interval,
    required int limit,
  });
}
