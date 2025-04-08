// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandleDataImpl _$$CandleDataImplFromJson(Map<String, dynamic> json) =>
    _$CandleDataImpl(
      date: DateTime.parse(json['date'] as String),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$CandleDataImplToJson(_$CandleDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
    };
