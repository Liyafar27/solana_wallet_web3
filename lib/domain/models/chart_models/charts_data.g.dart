// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charts_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartsDataImpl _$$ChartsDataImplFromJson(Map<String, dynamic> json) =>
    _$ChartsDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChartsDataImplToJson(_$ChartsDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
