import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:sol_fib_bot/domain/models/trade_model.dart';

class BinanceService {
  final Dio _dio;
  static const String _baseUrl = 'https://api.binance.com/api/v3';
  final String? _apiKey;
  final String? _secretKey;

  BinanceService({String? apiKey, String? secretKey})
      :  _apiKey = apiKey,
        _secretKey = secretKey,
        _dio = Dio(BaseOptions(
          baseUrl: _baseUrl,
          headers: apiKey != null ? {'X-MBX-APIKEY': apiKey} : null,
        ));

  /// Получить текущую цену актива
  Future<double> getCurrentPrice(String symbol) async {
    try {
      final response = await _dio.get('/ticker/price', queryParameters: {
        'symbol': symbol,
      });
      return double.parse(response.data['price']);
    } catch (e) {
      throw Exception('Failed to get current price: $e');
    }
  }

  /// Получить границы Bollinger Bands
  Future<void> getBollingerBands() async {
    const int period = 200; // Количество свечей
    const double k = 2.0; // Множитель BB

    try {
      final response = await _dio.get('/klines', queryParameters: {
        'symbol': 'SOLUSDT',
        'interval': '1m',
        'limit': period,
      });

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;

        if (data.isEmpty) {
          return;
        }

        List<double> closePrices =
            data.map((candle) => double.parse(candle[4])).toList();

        double sma = closePrices.reduce((a, b) => a + b) / period;
        double variance = closePrices
                .map((price) => pow(price - sma, 2))
                .reduce((a, b) => a + b) /
            period;
        double stdDev = sqrt(variance);

        double upperBand = sma + (k * stdDev);
        double lowerBand = sma - (k * stdDev);

        print('🔹 Верхняя граница BB: $upperBand');
        print('🔹 Нижняя граница BB: $lowerBand');
      } else {
        print('❌ Ошибка: Binance API вернул статус ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Ошибка при запросе к Binance API: $e');
    }
  }

  /// Получить историю сделок (нужен API-ключ и подпись)
  Future<List<Trade>> getTradeHistory(String symbol) async {
    try {
      _checkApiKeys();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final signature =
          _generateSignature({'symbol': symbol, 'timestamp': timestamp});

      final response = await _dio.get('/myTrades', queryParameters: {
        'symbol': symbol,
        'timestamp': timestamp,
        'signature': signature,
      });

      return (response.data as List)
          .map((trade) => Trade(
                id: trade['id'].toString(),
                type: trade['isBuyer'] ? 'buy' : 'sell',
                price: double.parse(trade['price']),
                amount: double.parse(trade['qty']),
                timestamp: DateTime.fromMillisecondsSinceEpoch(trade['time']),
                symbol: trade['symbol'],
                status: 'completed',
              ))
          .toList();
    } catch (e) {
      throw Exception('Failed to get trade history: $e');
    }
  }

  /// Разместить ордер на покупку
  Future<void> placeBuyOrder(
      String symbol, double quantity, double price) async {
    try {
      _checkApiKeys();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final params = {
        'symbol': symbol,
        'side': 'BUY',
        'type': 'LIMIT',
        'timeInForce': 'GTC',
        'quantity': quantity.toString(),
        'price': price.toString(),
        'timestamp': timestamp,
      };
      final signature = _generateSignature(params);

      await _dio.post('/order', data: {...params, 'signature': signature});
    } catch (e) {
      throw Exception('Failed to place buy order: $e');
    }
  }

  /// Разместить ордер на продажу
  Future<void> placeSellOrder(
      String symbol, double quantity, double price) async {
    try {
      _checkApiKeys();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final params = {
        'symbol': symbol,
        'side': 'SELL',
        'type': 'LIMIT',
        'timeInForce': 'GTC',
        'quantity': quantity.toString(),
        'price': price.toString(),
        'timestamp': timestamp,
      };
      final signature = _generateSignature(params);

      await _dio.post('/order', data: {...params, 'signature': signature});
    } catch (e) {
      throw Exception('Failed to place sell order: $e');
    }
  }

  /// Получить цены закрытия для расчета индикаторов
  Future<List<double>> getClosePrices(String symbol, int period) async {
    try {
      final response = await _dio.get('/klines', queryParameters: {
        'symbol': symbol,
        'interval': '1m',
        'limit': period,
      });

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((candle) => double.parse(candle[4])).toList();
      } else {
        throw Exception('Ошибка загрузки данных');
      }
    } catch (e) {
      throw Exception('Ошибка при получении цен закрытия: $e');
    }
  }

  /// Получить уровни Fibonacci Bollinger Bands
  Future<Map<String, double>> getFibonacciBollingerBands() async {
    const int period = 200; // Длина индикатора
    const double mult = 3.0; // Коэффициент отклонения

    try {
      final response = await _dio.get('/klines', queryParameters: {
        'symbol': 'SOLUSDT',
        'interval': '1m',
        'limit': period,
      });

      if (response.statusCode != 200) {
        throw Exception("Ошибка загрузки данных Binance API: ${response.statusCode}");
      }

      final List<dynamic> data = response.data;
      if (data.isEmpty) throw Exception("Нет данных для расчета FBB");

      // 1️⃣ Получаем HLC3 = (High + Low + Close) / 3
      List<double> hlc3 = data.map((candle) =>
      (double.parse(candle[2]) + double.parse(candle[3]) + double.parse(candle[4])) / 3
      ).toList();
      int length = 200;
      List<double> lastHlc3 = hlc3.sublist(hlc3.length - length);

      // 2️⃣ Рассчитываем среднюю VWMA
      double sumPriceVolume = 0;
      double sumVolume = 0;
      for (var candle in data) {
        double price = (double.parse(candle[2]) + double.parse(candle[3]) + double.parse(candle[4])) / 3; // HLC3
        double volume = double.parse(candle[5]); // Volume
        sumPriceVolume += price * volume;
        sumVolume += volume;
      }
      double basis = sumPriceVolume / sumVolume; // VWMA

      // 3️⃣ Рассчитываем стандартное отклонение (Standard Deviation)
      double variance = lastHlc3.map((p) => pow(p - basis, 2)).reduce((a, b) => a + b) / lastHlc3.length;
      double stdDev = sqrt(variance);
      double dev = mult * stdDev;

      return {
        'basis': basis,
        'upper_1': basis + (0.236 * dev),
        'upper_2': basis + (0.382 * dev),
        'upper_3': basis + (0.5 * dev),
        'upper_4': basis + (0.618 * dev),
        'upper_5': basis + (0.764 * dev),
        'upper_6': basis + (1 * dev),
        'lower_1': basis - (0.236 * dev),
        'lower_2': basis - (0.382 * dev),
        'lower_3': basis - (0.5 * dev),
        'lower_4': basis - (0.618 * dev),
        'lower_5': basis - (0.764 * dev),
        'lower_6': basis - (1 * dev),
      };
    } catch (e) {
      throw Exception("Ошибка при расчете FBB: $e");
    }
  }
  /// Получить информацию об аккаунте (нужен API-ключ и подпись)
  Future<Map<String, dynamic>> getAccountInfo() async {
    try {
      _checkApiKeys();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final signature = _generateSignature({'timestamp': timestamp});

      final response = await _dio.get('/account', queryParameters: {
        'timestamp': timestamp,
        'signature': signature,
      });
      return response.data;
    } catch (e) {
      throw Exception('Failed to get account info: $e');
    }
  }

  /// Генерация подписи HMAC SHA256
  String _generateSignature(Map<String, dynamic> params) {
    if (_secretKey == null) {
      throw Exception('Secret key is required for signature.');
    }

    final queryString =
        params.entries.map((e) => '${e.key}=${e.value}').join('&');
    final key = utf8.encode(_secretKey!);
    final bytes = utf8.encode(queryString);
    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);

    return hex.encode(digest.bytes);
  }

  /// Проверка наличия API-ключей
  void _checkApiKeys() {
    if (_apiKey == null || _secretKey == null) {
      throw Exception('API key and Secret key are required for this operation');
    }
  }
}
