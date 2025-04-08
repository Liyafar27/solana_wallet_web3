import 'package:dio/dio.dart';
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/services/chart_services/candles_service.dart' show CandlesService;

class CandlesServiceImpl implements CandlesService {
  final Dio _dio;

  CandlesServiceImpl(this._dio);

  @override
  Future<List<CandleData>> fetchCandles({
    required String symbol,
    required String interval,
    required int limit,
  }) async {
    final response = await _dio.get('/klines', queryParameters: {
      'symbol': symbol,
      'interval': interval,
      'limit': limit,
    });

    if (response.statusCode != 200) {
      throw Exception("Ошибка API Binance");
    }

    final List<dynamic> data = response.data;
    if (data.isEmpty) throw Exception("Нет данных для графика");

    return data.map((candle) => CandleData(
      date: DateTime.fromMillisecondsSinceEpoch(candle[0]),
      open: double.parse(candle[1]),
      high: double.parse(candle[2]),
      low: double.parse(candle[3]),
      close: double.parse(candle[4]),
      volume: double.parse(candle[5]),
    )).toList();
  }



}
