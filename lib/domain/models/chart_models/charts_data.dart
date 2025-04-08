import 'package:freezed_annotation/freezed_annotation.dart';

part 'charts_data.freezed.dart';
part 'charts_data.g.dart';

@freezed
class ChartsData with _$ChartsData {
  const factory ChartsData({
    required DateTime date,
    required double value,
  }) = _ChartsData;

  factory ChartsData.fromJson(Map<String, dynamic> json) => _$ChartsDataFromJson(json);
}
