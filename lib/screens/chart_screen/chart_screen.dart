import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/chart_data/chart_data_bloc.dart';
import 'package:sol_fib_bot/screens/chart_screen/widgets/chart_controls.dart';
import 'package:sol_fib_bot/screens/chart_screen/widgets/dropdown_menu.dart';
import 'package:sol_fib_bot/screens/chart_screen/widgets/trading_chart_widget.dart';
import 'package:sol_fib_bot/screens/chart_screen/widgets/volume_chart_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final List<String> _symbols = [
    'BTCUSDT',
    'SOLUSDT',
    'ETHUSDT',
    'NEARUSDT',
    'BNBUSDT'
  ];
  final List<String> intervals = ['1m', '5m', '15m', '1h', '2h'];
  final ZoomPanBehavior zoomBehavior = ZoomPanBehavior(
    enablePinching: true,
    enablePanning: true,
    enableDoubleTapZooming: true,
    enableSelectionZooming: true,
  );

  bool showVolumeChart = true;
  bool showRSIChart = true;
  bool showFibonacci = true;
  String selectedInterval = '1m';
  String selectedSymbol = 'SOLUSDT';
  DateTime? visibleMin;
  DateTime? visibleMax;

  late final ChartDataBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<ChartDataBloc>();
    visibleMin = DateTime.now().subtract(const Duration(days: 7));
    visibleMax = DateTime.now();

    _loadData(selectedSymbol, selectedInterval, 200, 200);
  }

  void _loadData(String symbol, String interval, int limit, int rsiPeriod) {
    bloc.add(LoadChartDataEvent(
      symbol: symbol,
      interval: interval,
      limit: limit,
      rsiPeriod: rsiPeriod,
    ));
  }

  void _onDropdownChanged(String value, bool isSymbol) {
    setState(() {
      if (isSymbol) {
        selectedSymbol = value;
      } else {
        selectedInterval = value;
      }
    });
    _loadData(selectedSymbol, selectedInterval, 200, 200);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Row(
          children: [
            const Text(
              "Trading Chart",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),const SizedBox(width: 12),
            DropdownMenuChart(
              symbols: _symbols,
              selectedSymbol: selectedSymbol,
              onChanged: (value) => _onDropdownChanged(value, true),
            ),
            DropdownMenuChart(
              symbols: intervals,
              selectedSymbol: selectedInterval,
              onChanged: (value) => _onDropdownChanged(value, false),
            ),
          ],
        ),
      ),
      body: BlocBuilder<ChartDataBloc, ChartDataState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            initial: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (state) {
              return Column(
                children: [
                  ChartControls(
                    showVolumeChart: showVolumeChart,
                    showRSIChart: showRSIChart,
                    showFibonacci: showFibonacci,
                    onZoomIn: () => zoomBehavior.zoomIn(),
                    onZoomOut: () => zoomBehavior.zoomOut(),
                    onToggleVolume: (value) =>
                        setState(() => showVolumeChart = value),
                    onToggleRSI: (value) =>
                        setState(() => showRSIChart = value),
                    onToggleFibonacci: (value) =>
                        setState(() => showFibonacci = value),
                  ),
                  TradingChartWidget(
                    zoomBehavior: zoomBehavior,
                    visibleMin: visibleMin ??
                        DateTime.now().subtract(const Duration(days: 7)),
                    visibleMax: visibleMax ?? DateTime.now(),
                    showRSIChart: showRSIChart,
                    showFibonacci: showFibonacci,
                    candles: state.candles,
                    selectedSymbol: selectedSymbol,
                    selectedInterval: selectedInterval,
                    rsiData: state.rsiData,
                    fbbLevels: state.fbbLevels,
                  ),
                  if (showVolumeChart)
                    VolumeChartWidget(candles: state.candles),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
