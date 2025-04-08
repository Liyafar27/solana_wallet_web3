import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';


abstract class ChartRepository {
  Future<List<CandleData>> fetchCandleData(String symbol, String interval, int limit);
  Future<Map<String, double>> calculateFBB(List<CandleData> candles);
  Future<List<RSIData>> calculateRSI(List<CandleData> candles);
}