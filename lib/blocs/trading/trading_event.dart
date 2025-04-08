import 'package:equatable/equatable.dart';

abstract class TradingEvent extends Equatable {
  const TradingEvent();

  @override
  List<Object?> get props => [];
}

class StartBot extends TradingEvent {}

class StopBot extends TradingEvent {}

class UpdatePrice extends TradingEvent {
  final double price;

  const UpdatePrice(this.price);

  @override
  List<Object?> get props => [price];
}

class PlaceBuyOrder extends TradingEvent {
  final String symbol;
  final double quantity;
  final double price;

  const PlaceBuyOrder({
    required this.symbol,
    required this.quantity,
    required this.price,
  });

  @override
  List<Object?> get props => [symbol, quantity, price];
}

class PlaceSellOrder extends TradingEvent {
  final String symbol;
  final double quantity;
  final double price;

  const PlaceSellOrder({
    required this.symbol,
    required this.quantity,
    required this.price,
  });

  @override
  List<Object?> get props => [symbol, quantity, price];
}

class LoadTradeHistory extends TradingEvent {
  final String symbol;

  const LoadTradeHistory(this.symbol);

  @override
  List<Object?> get props => [symbol];
} 