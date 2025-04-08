import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sol_fib_bot/domain/models/history_transactions/transaction_info.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/phantom_repository.dart';
import 'package:sol_fib_bot/domain/services/history_transaction_services/rate_limiter.dart';
import 'package:sol_fib_bot/domain/services/history_transaction_services/token_analyzer.dart';

part 'history_transaction_bloc.freezed.dart';

@freezed
class HistoryTransactionState with _$HistoryTransactionState {
  const factory HistoryTransactionState.initial() = HistoryTransactionInitial;

  const factory HistoryTransactionState.loading() = HistoryTransactionLoading;

  const factory HistoryTransactionState.loaded(
      {required List<Map<String, dynamic>> transactions,
      required TransactionInfo? transactionDetails,
      int? selectedTransactionIndex,
      String? amountSent,
      String? amountReceived}) = HistoryTransactionLoaded;

  const factory HistoryTransactionState.error(String message) =
      HistoryTransactionError;
}

@freezed
class HistoryTransactionEvent with _$HistoryTransactionEvent {
  const factory HistoryTransactionEvent.load(String walletAddress) =
      LoadTransactionHistory;

  const factory HistoryTransactionEvent.refresh(String walletAddress) =
      RefreshTransactionHistory;
  const factory HistoryTransactionEvent.reset() = ResetTransactionHistory;
  const factory HistoryTransactionEvent.selectTransaction(int index) =
      SelectTransaction;
  const factory HistoryTransactionEvent.loadTransactionDetails(
          String signature) =
      LoadTransactionDetails;
}

class HistoryTransactionBloc
    extends Bloc<HistoryTransactionEvent, HistoryTransactionState> {
  final PhantomRepository phantomRepository;
  final _rateLimiter = RateLimiter(const Duration(seconds: 1));

  HistoryTransactionBloc({required this.phantomRepository})
      : super(const HistoryTransactionState.initial()) {
    on<LoadTransactionHistory>(_onLoadTransactionHistory);
    on<RefreshTransactionHistory>(_onRefreshTransactionHistory);
    on<SelectTransaction>(_onSelectTransaction);
    on<LoadTransactionDetails>(
        _onLoadTransactionDetails);
    on<ResetTransactionHistory>(
        _onResetTransactionHistory);
  }
  Future<void> _onResetTransactionHistory(ResetTransactionHistory event,
      Emitter<HistoryTransactionState> emit) async {
    emit(const HistoryTransactionState.initial());

  }

  Future<void> _onLoadTransactionHistory(LoadTransactionHistory event,
      Emitter<HistoryTransactionState> emit) async {
    try {
      emit(const HistoryTransactionState.loading());

      final transactions =
          await phantomRepository.getTransactionHistory(event.walletAddress);
      final transactionMaps = transactions.map((tx) => tx.toMap()).toList();

      emit(HistoryTransactionState.loaded(
        transactions: transactionMaps,
        transactionDetails: null, // Пустая мапа для подробностей
      ));
    } catch (e) {
      emit(HistoryTransactionState.error(
          'Ошибка при загрузке истории транзакций: $e'));
    }
  }

  Future<void> _onRefreshTransactionHistory(RefreshTransactionHistory event,
      Emitter<HistoryTransactionState> emit) async {
    try {
      emit(const HistoryTransactionState.loading());

      final transactions =
          await phantomRepository.getTransactionHistory(event.walletAddress);
      final transactionMaps = transactions.map((tx) => tx.toMap()).toList();

      emit(HistoryTransactionState.loaded(
        transactions: transactionMaps,
        transactionDetails: null,
      ));
    } catch (e) {
      emit(HistoryTransactionState.error(
          'Ошибка при обновлении истории транзакций: $e'));
    }
  }

  Future<void> _onSelectTransaction(
      SelectTransaction event, Emitter<HistoryTransactionState> emit) async {
    final currentState = state;
    if (currentState is HistoryTransactionLoaded) {
      final transaction = currentState.transactions[event.index];

      if (currentState.selectedTransactionIndex == event.index) return;

      await _rateLimiter.enqueue(() async {
        try {
          final details = await phantomRepository
              .getTransactionDetails(transaction['signature']);

          if (details == null) {
            emit(const HistoryTransactionState.error(
                "Ошибка загрузки данных о транзакции"));
            return;
          }
          final result = analyzeTokenChanges(
              details.meta.preTokenBalances, details.meta.postTokenBalances);
          emit(HistoryTransactionState.loaded(
            transactions: currentState.transactions,
            transactionDetails: details,
            selectedTransactionIndex: event.index,
            amountReceived: result?.amountReceived,
            amountSent: result?.amountSent,
          ));

          if (kDebugMode) {
            print("Транзакция загружена успешно: $details");
          }
        } catch (e) {
          emit(HistoryTransactionState.error("Ошибка: $e"));
          if (kDebugMode) {
            print("Ошибка при загрузке транзакции: $e");
          }
        }
      });
    }
  }

  Future<void> _onLoadTransactionDetails(LoadTransactionDetails event,
      Emitter<HistoryTransactionState> emit) async {
    final currentState = state;
    if (currentState is HistoryTransactionLoaded) {
      await _rateLimiter.enqueue(() async {
        final details =
            await phantomRepository.getTransactionDetails(event.signature);
        analyzeTokenChanges(
            details!.meta.preTokenBalances, details.meta.postTokenBalances);

        emit(HistoryTransactionState.loaded(
          transactions: currentState.transactions,
          transactionDetails: details, // Обновляем подробности транзакции
          selectedTransactionIndex:
              currentState.selectedTransactionIndex, // Не меняем индекс
        ));
      });
    }
  }
}
