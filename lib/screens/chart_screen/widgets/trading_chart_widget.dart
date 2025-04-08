import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sol_fib_bot/domain/models/chart_models/candle_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/charts_data.dart';
import 'package:sol_fib_bot/domain/models/chart_models/rsi_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TradingChartWidget extends StatelessWidget {
  final ZoomPanBehavior zoomBehavior;
  final DateTime visibleMin;
  final DateTime visibleMax;
  final bool showRSIChart;
  final bool showFibonacci;
  final List<CandleData> candles;
  final String selectedInterval;
  final String selectedSymbol;
  final List<RSIData> rsiData;
  final Map<String, double> fbbLevels;

  const TradingChartWidget({
    super.key,
    required this.zoomBehavior,
    required this.visibleMin,
    required this.visibleMax,
    required this.showRSIChart,
    required this.showFibonacci,
    required this.candles,
    required this.selectedSymbol,
    required this.selectedInterval,
    required this.rsiData,
    required this.fbbLevels,
  });

  @override
  Widget build(BuildContext context) {
    final frameDurations = {'1m': 1, '5m': 5, '15m': 15, '1h': 60, '2h': 120};

    int frameDurationInMinutes = frameDurations[selectedInterval] ?? 1;

    final lastRealCandleDate = candles.last.date;
    final futureEndDate = lastRealCandleDate.add(
      Duration(minutes: frameDurationInMinutes * 30),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 4,
            child: SfCartesianChart(
                zoomPanBehavior: zoomBehavior,
                primaryXAxis: DateTimeAxis(
                  initialVisibleMinimum: visibleMin,
                  initialVisibleMaximum: visibleMax,
                  maximum: futureEndDate,
                ),
                // plotAreaBorderWidth: 0,
                margin: EdgeInsets.zero,
                primaryYAxis: NumericAxis(
                  plotOffset: 45,
                  // Можешь подобрать значение вручную
                  rangePadding: ChartRangePadding.additional,
                  // Добавляет немного отступа
                  opposedPosition: false,
                  labelAlignment: LabelAlignment.center,
                  axisLabelFormatter: (AxisLabelRenderDetails args) {
                    final double value = double.tryParse(args.text) ?? 0;
                    if (value % 1 == 0) {
                      return ChartAxisLabel(
                          value.toStringAsFixed(0), args.textStyle);
                    } else {
                      if (value < 10) {
                        return ChartAxisLabel(
                            value.toStringAsFixed(3), args.textStyle);
                      } else {
                        return ChartAxisLabel(
                            value.toStringAsFixed(2), args.textStyle);
                      }
                    }
                  },
                ),
                axes: <NumericAxis>[
                  if (showRSIChart)
                    NumericAxis(
                      axisLine: const AxisLine(
                        color: Colors.transparent, // Цвет оси
                      ),
                      majorTickLines: const MajorTickLines(
                        color: Colors.transparent, // Цвет основных делений
                      ),
                      borderWidth: 0,
                      opposedPosition: true,
                      labelAlignment: LabelAlignment.center,
                      borderColor: Colors.transparent,
                      labelStyle: const TextStyle(color: Colors.transparent),
                      name: 'rsiAxis',
                      minimum: 0,
                      maximum: 300,
                      labelPosition: ChartDataLabelPosition.inside,
                      plotBands: <PlotBand>[
                        if (showRSIChart)
                          PlotBand(
                            start: 70,
                            end: 70,
                            borderWidth: 1,
                            borderColor: Colors.green.shade900,
                            text: '70',
                            textStyle: TextStyle(
                                color: Colors.greenAccent.shade400,
                                fontWeight: FontWeight.w900,
                                fontSize: 12),
                          ),
                        if (showRSIChart)
                          PlotBand(
                            start: 30,
                            end: 30,
                            borderWidth: 1,
                            text: '30',
                            textStyle: TextStyle(
                                color: Colors.redAccent.shade400,
                                fontWeight: FontWeight.w900,
                                fontSize: 10),
                            borderColor: Colors.red.shade900,
                          ),
                      ],
                    )
                ],
                trackballBehavior: TrackballBehavior(
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  tooltipSettings: const InteractiveTooltip(enable: false),
                  builder: (BuildContext context, TrackballDetails details) {
                    if (details.pointIndex == null) {
                      return Container();
                    }
                    final CandleData candle = candles[details.pointIndex!];
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Close: ${candle.close.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
                series: <CartesianSeries>[
                  CandleSeries<CandleData, DateTime>(
                    dataSource: candles,
                    xValueMapper: (CandleData candle, _) => candle.date,
                    lowValueMapper: (CandleData candle, _) => candle.low,
                    highValueMapper: (CandleData candle, _) => candle.high,
                    openValueMapper: (CandleData candle, _) => candle.open,
                    closeValueMapper: (CandleData candle, _) => candle.close,
                    trendlines: <Trendline>[
                      Trendline(
                        type: TrendlineType.linear,
                        color: Colors.blue,
                        width: 2,
                        dashArray: <double>[4, 4],
                      )
                    ],
                    name: selectedSymbol,
                  ),
                  if (showRSIChart)
                    LineSeries<RSIData, DateTime>(
                      dataSource: rsiData,
                      xValueMapper: (RSIData rsi, _) => rsi.date,
                      yValueMapper: (RSIData rsi, _) => rsi.value,
                      name: "RSI",
                      color: Colors.blue,
                      yAxisName: 'rsiAxis',
                      width: 0.5,
                    ),
                  LineSeries<ChartsData, DateTime>(
                    key: const ValueKey('fbb_basis'),
                    opacity: showFibonacci ? 1 : 0,
                    color: Colors.purple.shade300,
                    dataSource:
                        getHorizontalLineData(fbbLevels['basis']!, candles),
                    xValueMapper: (ChartsData data, _) => data.date,
                    yValueMapper: (ChartsData data, _) => data.value,
                    width: 0.3,
                    animationDuration: 2000,
                    name: "Basis",
                  ),
                  LineSeries<ChartsData, DateTime>(
                    dataSource:
                        getHorizontalLineData(fbbLevels['upper_6']!, candles),
                    xValueMapper: (ChartsData data, _) => data.date,
                    yValueMapper: (ChartsData data, _) => data.value,
                    color: Colors.green.shade500,
                    width: 0.3,
                    opacity: showFibonacci ? 1 : 0,
                    animationDuration: 2000,
                  ),
                  LineSeries<ChartsData, DateTime>(
                    dataSource:
                        getHorizontalLineData(fbbLevels['upper_3']!, candles),
                    xValueMapper: (ChartsData data, _) => data.date,
                    yValueMapper: (ChartsData data, _) => data.value,
                    color: Colors.green.shade300,
                    width: 0.3,
                    opacity: showFibonacci ? 1 : 0,
                    animationDuration: 2000,
                  ),
                  LineSeries<ChartsData, DateTime>(
                    dataSource:
                        getHorizontalLineData(fbbLevels['lower_6']!, candles),
                    xValueMapper: (ChartsData data, _) => data.date,
                    yValueMapper: (ChartsData data, _) => data.value,
                    color: Colors.red.shade500,
                    opacity: showFibonacci ? 1 : 0,
                    width: 0.3,
                    animationDuration: 2000,
                  ),
                  LineSeries<ChartsData, DateTime>(
                    dataSource:
                        getHorizontalLineData(fbbLevels['lower_3']!, candles),
                    xValueMapper: (ChartsData data, _) => data.date,
                    yValueMapper: (ChartsData data, _) => data.value,
                    color: Colors.red.shade300,
                    opacity: showFibonacci ? 1 : 0,
                    width: 0.3,
                    animationDuration: 2000,
                  ),
                ],
                annotations: buildAnnotations(candles, visibleMax, visibleMin) +
                    buildAnnotationsFibonacci(
                        fbbLevels, candles, showFibonacci)),
          ),
        ],
      ),
    );
  }
}

List<ChartsData> getHorizontalLineData(double level, List<CandleData> candles) {
  return [
    ChartsData(date: candles.first.date, value: level),
    ChartsData(date: candles.last.date, value: level),
  ];
}

List<CartesianChartAnnotation> buildAnnotationsFibonacci(
    Map<String, double> fbbLevels,
    List<CandleData> candles,
    bool showFibonacci) {
  List<CartesianChartAnnotation> annotations = [
    {
      'label': "Basis",
      'level': fbbLevels['basis']!,
      'color': Colors.purple.shade300
    },
    {
      'label': "1",
      'level': fbbLevels['upper_6']!,
      'color': Colors.greenAccent.shade700
    },
    {
      'label': "0.5",
      'level': fbbLevels['upper_3']!,
      'color': Colors.greenAccent.shade200
    },
    {
      'label': "-0.5",
      'level': fbbLevels['lower_3']!,
      'color': Colors.redAccent.shade200
    },
    {
      'label': "-1",
      'level': fbbLevels['lower_6']!,
      'color': Colors.redAccent.shade700
    },
  ]
      .map((data) => CartesianChartAnnotation(
            region: AnnotationRegion.chart,
            widget: AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 700),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(data['label'] as String,
                    style:
                        TextStyle(color: data['color'] as Color, fontSize: 10)),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: candles.last.date,
            y: data['level'],
          ))
      .toList();

  return showFibonacci ? annotations : [];
}

List<CartesianChartAnnotation> buildAnnotations(
    List<CandleData> candles, DateTime visibleMin, DateTime visibleMax) {
  if (candles.isEmpty) return [];

  List<CandleData> visibleCandles = candles
      .where((c) => c.date.isAfter(visibleMin) && c.date.isBefore(visibleMax))
      .toList();

  if (visibleCandles.isEmpty) return [];

  double minPrice = visibleCandles.map((c) => c.low).reduce(min);
  double maxPrice = visibleCandles.map((c) => c.high).reduce(max);
  const double offset = 10;

  List<CartesianChartAnnotation> annotations = visibleCandles
      .where((c) => c.high == maxPrice || c.low == minPrice)
      .map((c) => CartesianChartAnnotation(
            region: AnnotationRegion.chart,
            widget: AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 700),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "${c.high == maxPrice ? "Max" : "Min"}: \$${(c.high == maxPrice ? c.high : c.low).toStringAsFixed(2)}",
                  style: TextStyle(
                      color: c.high == maxPrice
                          ? Colors.greenAccent.shade400
                          : Colors.redAccent.shade400),
                ),
              ),
            ),
            coordinateUnit: CoordinateUnit.point,
            x: c.date,
            y: c.high == maxPrice ? c.high - offset : c.low + offset,
          ))
      .toList();

  return annotations;
}
