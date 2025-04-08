import 'package:flutter/material.dart';
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class VolumeChartWidget extends StatelessWidget {
  final List<CandleData> candles;

  const VolumeChartWidget({Key? key, required this.candles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxVolume = candles.isNotEmpty
        ? candles.map((c) => c.volume).reduce((a, b) => a > b ? a : b)
        : 0;

    return Expanded(
      flex: 1,
      child: SfCartesianChart(
        primaryXAxis: DateTimeAxis(
          initialVisibleMinimum: candles.isNotEmpty ? candles.first.date : null,
          rangePadding: ChartRangePadding.round,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: maxVolume * 1.05,
        ),
        series: <CartesianSeries<CandleData, DateTime>>[
          ColumnSeries<CandleData, DateTime>(
            dataSource: candles,
            xValueMapper: (CandleData candle, _) => candle.date,
            yValueMapper: (CandleData candle, _) => candle.volume,
            name: "Volume",
            color: Colors.blue,
            width: 1,
          ),
        ],
      ),
    );
  }
}
