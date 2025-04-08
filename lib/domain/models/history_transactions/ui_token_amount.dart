import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_token_amount.freezed.dart';
part 'ui_token_amount.g.dart';

@freezed
class UiTokenAmount with _$UiTokenAmount {
  const factory UiTokenAmount({
    required String amount,
    required int decimals,
    double? uiAmount,
    required String uiAmountString,
  }) = _UiTokenAmount;

  factory UiTokenAmount.fromJson(Map<String, dynamic> json) =>
      _$UiTokenAmountFromJson(json);
}
