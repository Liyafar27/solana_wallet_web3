// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rsi_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RSIDataImpl _$$RSIDataImplFromJson(Map<String, dynamic> json) =>
    _$RSIDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$RSIDataImplToJson(_$RSIDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
