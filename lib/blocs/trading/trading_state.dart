import 'package:equatable/equatable.dart';
import 'package:sol_fib_bot/domain/models/trade_model.dart';

abstract class TradingState extends Equatable {
  const TradingState();

  @override
  List<Object?> get props => [];
}

class TradingInitial extends TradingState {}

class TradingLoading extends TradingState {}

class BotRunning extends TradingState {
  final double currentPrice;
  final List<Trade> trades;
  final bool isBuying;
  final double lastBuyPrice;

  const BotRunning({
    required this.currentPrice,
    required this.trades,
    required this.isBuying,
    required this.lastBuyPrice,
  });

  @override
  List<Object?> get props => [currentPrice, trades, isBuying, lastBuyPrice];

  BotRunning copyWith({
    double? currentPrice,
    List<Trade>? trades,
    bool? isBuying,
    double? lastBuyPrice,
  }) {
    return BotRunning(
      currentPrice: currentPrice ?? this.currentPrice,
      trades: trades ?? this.trades,
      isBuying: isBuying ?? this.isBuying,
      lastBuyPrice: lastBuyPrice ?? this.lastBuyPrice,
    );
  }
}

class BotStopped extends TradingState {
  final List<Trade> trades;

  const BotStopped(this.trades);

  @override
  List<Object?> get props => [trades];
}

class TradingError extends TradingState {
  final String message;

  const TradingError(this.message);

  @override
  List<Object?> get props => [message];
} 