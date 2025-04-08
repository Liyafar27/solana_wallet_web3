import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sol_fib_bot/domain/models/history_transactions/token_balance.dart';

part 'transaction_meta.freezed.dart';
part 'transaction_meta.g.dart';

@freezed
class TransactionMeta with _$TransactionMeta {
  const factory TransactionMeta({
    required int computeUnitsConsumed,
    required int fee,
    required List<TokenBalance> preTokenBalances,
    required List<TokenBalance> postTokenBalances,
    required List<int> preBalances,
    required List<int> postBalances,
    dynamic err, // можно поменять на Map<String, dynamic>? если хочешь обрабатывать ошибки
  }) = _TransactionMeta;

  factory TransactionMeta.fromJson(Map<String, dynamic> json) =>
      _$TransactionMetaFromJson(json);
}
