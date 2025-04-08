import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';

List<RSIData> calculateRSI(List<CandleData> candles, {int period = 14}) {
  if (candles.length < period) return [];

  List<double> gains = [];
  List<double> losses = [];

  for (int i = 1; i < candles.length; i++) {
    double change = candles[i].close - candles[i - 1].close;
    gains.add(change > 0 ? change : 0);
    losses.add(change < 0 ? -change : 0);
  }

  double avgGain = gains.take(period).reduce((a, b) => a + b) / period;
  double avgLoss = losses.take(period).reduce((a, b) => a + b) / period;

  List<RSIData> rsiValues = [];

  for (int i = period; i < gains.length; i++) {
    avgGain = ((avgGain * (period - 1)) + gains[i]) / period;
    avgLoss = ((avgLoss * (period - 1)) + losses[i]) / period;

    double rs = avgLoss == 0 ? 100 : avgGain / avgLoss;
    double rsi = 100 - (100 / (1 + rs));

    rsiValues.add(RSIData(date: candles[i + 1].date, value: rsi));
  }

  return rsiValues;
}
