import 'package:freezed_annotation/freezed_annotation.dart';

part 'rsi_data.freezed.dart';
part 'rsi_data.g.dart';

@freezed
class RSIData with _$RSIData {
  const factory RSIData({
    required DateTime date,
    required double value,
  }) = _RSIData;

  factory RSIData.fromJson(Map<String, dynamic> json) => _$RSIDataFromJson(json);
}
