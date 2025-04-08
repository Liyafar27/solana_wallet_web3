import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sol_fib_bot/domain/models/history_transactions/ui_token_amount.dart';

part 'token_balance.freezed.dart';
part 'token_balance.g.dart';

@freezed
class TokenBalance with _$TokenBalance {
  const factory TokenBalance({
    required int accountIndex,
    required String mint,
    required String owner,
    required String programId,
    required UiTokenAmount uiTokenAmount,
  }) = _TokenBalance;

  factory TokenBalance.fromJson(Map<String, dynamic> json) =>
      _$TokenBalanceFromJson(json);
}
