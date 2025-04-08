import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';

abstract class RsiRepository {
  Future<List<RSIData>> getRsi({
    required String symbol,
    required String interval,
    required int period,
  });
}
