import 'package:dio/dio.dart';

class SwapService {
  final Dio _dio = Dio();

  // 🔥 Метод получения цены SOL → USDC
  Future<double> fetchSolPrice() async {
    try {
      final response = await _dio.get(
        'https://api.binance.com/api/v3/ticker/price?symbol=SOLUSDT',
      );

      return double.parse(response.data['price']);
    } catch (e) {
      throw Exception("Ошибка получения цены SOL");
    }
  }
}
