import 'dart:math';
import 'package:dio/dio.dart';
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';
import 'package:sol_fib_bot/domain/repositories/chart_repositories/chart_repository.dart';

  class ChartRepositoryImpl  implements ChartRepository{
  final Dio dio;

  ChartRepositoryImpl({Dio? dio})
      : dio = dio ?? Dio(BaseOptions(baseUrl: 'https://api.binance.com/api/v3'));

  @override
  Future<List<CandleData>> fetchCandleData(String symbol, String interval, int limit) async {
    final response = await dio.get('/klines', queryParameters: {
      'symbol': symbol,
      'interval': interval,
      'limit': limit,
    });
    if (response.statusCode != 200) {
      throw Exception("Ошибка API Binance: ${response.statusCode}");
    }
    final List<dynamic> data = response.data;
    if (data.isEmpty) throw Exception("Нет данных для графика");

    return data.map((candle) {
      return CandleData(
        date: DateTime.fromMillisecondsSinceEpoch(candle[0]),
        open: double.parse(candle[1]),
        high: double.parse(candle[2]),
        low: double.parse(candle[3]),
        close: double.parse(candle[4]),
        volume: candle[5].toString().isEmpty ? 0 : double.parse(candle[5].toString()),
      );
    }).toList();
  }

  @override
  Future<Map<String, double>> calculateFBB(candles ,) async {
    double mult = 3.0;
    List<double> hlc3 = candles.map((candle) {
      return (candle.high + candle.low + candle.close) / 3;
    }).toList().cast<double>();

    double sumPriceVolume = 0;
    double sumVolume = 0;
    for (var candle in candles) {
      double price = (candle.high + candle.low + candle.close) / 3;
      sumPriceVolume += price * candle.volume;
      sumVolume += candle.volume;
    }
    double basis = sumVolume == 0 ? 0 : sumPriceVolume / sumVolume;

    // Рассчитываем стандартное отклонение по всем свечам
    double sumSquaredDiff = 0;
    for (var value in hlc3) {
      sumSquaredDiff += pow(value - basis, 2);
    }
    double stdev = sqrt(sumSquaredDiff / hlc3.length);
    double dev = mult * stdev;

    return {
      'basis': basis,
      'upper_1': basis + 0.236 * dev,
      'upper_2': basis + 0.382 * dev,
      'upper_3': basis + 0.5 * dev,
      'upper_4': basis + 0.618 * dev,
      'upper_5': basis + 0.764 * dev,
      'upper_6': basis + 1 * dev,
      'lower_1': basis - 0.236 * dev,
      'lower_2': basis - 0.382 * dev,
      'lower_3': basis - 0.5 * dev,
      'lower_4': basis - 0.618 * dev,
      'lower_5': basis - 0.764 * dev,
      'lower_6': basis - 1 * dev,
    };
  }

  @override
  Future<List<RSIData>> calculateRSI(candles) async {
    int period = 14;
    List<double> gains = [];
    List<double> losses = [];

    for (int i = 1; i < candles.length; i++) {
      double change = candles[i].close - candles[i - 1].close;
      gains.add(max(change, 0));
      losses.add(max(-change, 0));
    }
    double avgGain = gains.take(period).reduce((a, b) => a + b) / period;
    double avgLoss = losses.take(period).reduce((a, b) => a + b) / period;

    List<RSIData> rsiValues = [];
    for (int i = period; i < candles.length - 1; i++) {
      avgGain = ((avgGain * (period - 1)) + gains[i]) / period;
      avgLoss = ((avgLoss * (period - 1)) + losses[i]) / period;
      double rs = avgLoss == 0 ? 100 : avgGain / avgLoss;
      double rsi = 100 - (100 / (1 + rs));
      rsiValues.add(RSIData(date: candles[i].date, value: rsi));
    }
    return rsiValues;
  }
}
