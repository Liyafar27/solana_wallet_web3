import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sol_fib_bot/domain/models/history_transactions/transaction_meta.dart';

part 'transaction_info.freezed.dart';
part 'transaction_info.g.dart';

@freezed
class TransactionInfo with _$TransactionInfo {
  const factory TransactionInfo({
    required int slot,
    required int blockTime,
    required TransactionMeta meta,

  }) = _TransactionInfo;

  factory TransactionInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionInfoFromJson(json);
}
