// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../services/chart_service.dart';
// import 'chart_event.dart';
// import 'chart_state.dart';
//
// class ChartBloc extends Bloc<ChartEvent, ChartState> {
//   final ChartService _chartService;
//   Timer? _updateTimer;
//   static const String defaultSymbol = 'SOLUSDT';
//
//   ChartBloc({required ChartService chartService})
//       : _chartService = chartService,
//         super(ChartInitial()) {
//     on<LoadChartData>(_onLoadChartData);
//     on<UpdateChartData>(_onUpdateChartData);
//     on<ChangeTimeframe>(_onChangeTimeframe);
//     on<UpdateFibonacciLevels>(_onUpdateFibonacciLevels);
//   }
//
//   Future<void> _onLoadChartData(
//     LoadChartData event,
//     Emitter<ChartState> emit,
//   ) async {
//     try {
//       emit(ChartLoading());
//       final chartData = await _chartService.fetchChartData(
//         event.symbol,
//         event.interval,
//       );
//       emit(ChartLoaded(
//         data: chartData,
//         currentInterval: event.interval,
//         symbol: event.symbol,
//       ));
//       _startUpdates(event.symbol);
//     } catch (e) {
//       emit(ChartError(e.toString()));
//     }
//   }
//
//   void _onUpdateChartData(
//     UpdateChartData event,
//     Emitter<ChartState> emit,
//   ) {
//     if (state is ChartLoaded) {
//       final currentState = state as ChartLoaded;
//       final updatedData = _chartService.updateChartData(
//         currentState.data,
//         event.price,
//         event.timestamp,
//       );
//       emit(currentState.copyWith(data: updatedData));
//     }
//   }
//
//   Future<void> _onChangeTimeframe(
//     ChangeTimeframe event,
//     Emitter<ChartState> emit,
//   ) async {
//     if (state is ChartLoaded) {
//       final currentState = state as ChartLoaded;
//       try {
//         emit(ChartLoading());
//         final chartData = await _chartService.fetchChartData(
//           currentState.symbol,
//           event.interval,
//         );
//         emit(ChartLoaded(
//           data: chartData,
//           currentInterval: event.interval,
//           symbol: currentState.symbol,
//         ));
//       } catch (e) {
//         emit(ChartError(e.toString()));
//       }
//     }
//   }
//
//   void _onUpdateFibonacciLevels(
//     UpdateFibonacciLevels event,
//     Emitter<ChartState> emit,
//   ) {
//     // Implement Fibonacci levels update logic
//   }
//
//   void _startUpdates(String symbol) {
//     _updateTimer?.cancel();
//     _updateTimer = Timer.periodic(const Duration(seconds: 5), (timer) async {
//       try {
//         if (state is ChartLoaded) {
//           add(UpdateChartData(
//             price: 21.45, // Replace with actual price from API
//             timestamp: DateTime.now(),
//           ));
//         }
//       } catch (e) {
//         emit(ChartError(e.toString()));
//       }
//     });
//   }
//
//   @override
//   Future<void> close() {
//     _updateTimer?.cancel();
//     return super.close();
//   }
// }