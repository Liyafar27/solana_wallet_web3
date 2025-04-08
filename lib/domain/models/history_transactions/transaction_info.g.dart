// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionInfoImpl _$$TransactionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionInfoImpl(
      slot: (json['slot'] as num).toInt(),
      blockTime: (json['blockTime'] as num).toInt(),
      meta: TransactionMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionInfoImplToJson(
        _$TransactionInfoImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'blockTime': instance.blockTime,
      'meta': instance.meta,
    };
