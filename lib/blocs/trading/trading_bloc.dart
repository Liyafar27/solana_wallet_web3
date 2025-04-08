// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../services/binance_service.dart';
// import 'trading_event.dart';
// import 'trading_state.dart';
//
// class TradingBloc extends Bloc<TradingEvent, TradingState> {
//   final BinanceService _binanceService;
//   Timer? _priceUpdateTimer;
//   static const String defaultSymbol = 'SOLUSDT';
//
//   TradingBloc({required BinanceService binanceService})
//       : _binanceService = binanceService,
//         super(TradingInitial()) {
//     on<StartBot>(_onStartBot);
//     on<StopBot>(_onStopBot);
//     on<UpdatePrice>(_onUpdatePrice);
//     on<PlaceBuyOrder>(_onPlaceBuyOrder);
//     on<PlaceSellOrder>(_onPlaceSellOrder);
//     on<LoadTradeHistory>(_onLoadTradeHistory);
//   }
//
//   Future<void> _onStartBot(
//     StartBot event,
//     Emitter<TradingState> emit,
//   ) async {
//     try {
//       emit(TradingLoading());
//       final currentPrice = await _binanceService.getCurrentPrice(defaultSymbol);
//       final trades = await _binanceService.getTradeHistory(defaultSymbol);
//
//       emit(BotRunning(
//         currentPrice: currentPrice,
//         trades: trades,
//         isBuying: true,
//         lastBuyPrice: 0.0,
//       ));
//
//       _startPriceUpdates();
//     } catch (e) {
//       emit(TradingError(e.toString()));
//     }
//   }
//
//   void _onStopBot(
//     StopBot event,
//     Emitter<TradingState> emit,
//   ) {
//     _stopPriceUpdates();
//     if (state is BotRunning) {
//       emit(BotStopped((state as BotRunning).trades));
//     }
//   }
//
//   void _onUpdatePrice(
//     UpdatePrice event,
//     Emitter<TradingState> emit,
//   ) {
//     if (state is BotRunning) {
//       final currentState = state as BotRunning;
//       emit(currentState.copyWith(currentPrice: event.price));
//       _checkTradingConditions(currentState.copyWith(currentPrice: event.price));
//     }
//   }
//
//   Future<void> _onPlaceBuyOrder(
//     PlaceBuyOrder event,
//     Emitter<TradingState> emit,
//   ) async {
//     try {
//       await _binanceService.placeBuyOrder(
//         event.symbol,
//         event.quantity,
//         event.price,
//       );
//       if (state is BotRunning) {
//         final currentState = state as BotRunning;
//         emit(currentState.copyWith(
//           isBuying: false,
//           lastBuyPrice: event.price,
//         ));
//       }
//     } catch (e) {
//       emit(TradingError(e.toString()));
//     }
//   }
//
//   Future<void> _onPlaceSellOrder(
//     PlaceSellOrder event,
//     Emitter<TradingState> emit,
//   ) async {
//     try {
//       await _binanceService.placeSellOrder(
//         event.symbol,
//         event.quantity,
//         event.price,
//       );
//       if (state is BotRunning) {
//         final currentState = state as BotRunning;
//         emit(currentState.copyWith(isBuying: true));
//       }
//     } catch (e) {
//       emit(TradingError(e.toString()));
//     }
//   }
//
//   Future<void> _onLoadTradeHistory(
//     LoadTradeHistory event,
//     Emitter<TradingState> emit,
//   ) async {
//     try {
//       final trades = await _binanceService.getTradeHistory(event.symbol);
//       if (state is BotRunning) {
//         final currentState = state as BotRunning;
//         emit(currentState.copyWith(trades: trades));
//       }
//     } catch (e) {
//       emit(TradingError(e.toString()));
//     }
//   }
//
//   void _startPriceUpdates() {
//     _priceUpdateTimer?.cancel();
//     _priceUpdateTimer = Timer.periodic(const Duration(seconds: 5), (timer) async {
//       try {
//         final price = await _binanceService.getCurrentPrice(defaultSymbol);
//         add(UpdatePrice(price));
//       } catch (e) {
//         add(StopBot());
//         emit(TradingError(e.toString()));
//       }
//     });
//   }
//
//   void _stopPriceUpdates() {
//     _priceUpdateTimer?.cancel();
//     _priceUpdateTimer = null;
//   }
//
//   void _checkTradingConditions(BotRunning currentState) {
//     // Implement Fibonacci trading logic here
//     // This is a simplified example
//     if (currentState.isBuying) {
//       if (_shouldBuy(currentState.currentPrice)) {
//         add(PlaceBuyOrder(
//           symbol: defaultSymbol,
//           quantity: 1.0, // Calculate based on available balance
//           price: currentState.currentPrice,
//         ));
//       }
//     } else {
//       if (_shouldSell(currentState.currentPrice, currentState.lastBuyPrice)) {
//         add(PlaceSellOrder(
//           symbol: defaultSymbol,
//           quantity: 1.0, // Calculate based on position size
//           price: currentState.currentPrice,
//         ));
//       }
//     }
//   }
//
//   bool _shouldBuy(double currentPrice) {
//     // Implement Fibonacci-based buy logic
//     // This is a placeholder implementation
//     return false;
//   }
//
//   bool _shouldSell(double currentPrice, double lastBuyPrice) {
//     // Implement Fibonacci-based sell logic
//     // This is a placeholder implementation
//     return currentPrice > lastBuyPrice * 1.05; // 5% profit target
//   }
//
//   @override
//   Future<void> close() {
//     _stopPriceUpdates();
//     return super.close();
//   }
// }