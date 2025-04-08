import 'package:freezed_annotation/freezed_annotation.dart';

part 'candle_data.freezed.dart';
part 'candle_data.g.dart';

@freezed
class CandleData with _$CandleData {
  const factory CandleData({
    required DateTime date,
    required double open,
    required double high,
    required double low,
    required double close,
    required double volume,
  }) = _CandleData;

  factory CandleData.fromJson(Map<String, dynamic> json) => _$CandleDataFromJson(json);
}
