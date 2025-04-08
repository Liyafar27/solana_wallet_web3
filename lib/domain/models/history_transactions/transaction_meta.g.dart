// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionMetaImpl _$$TransactionMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionMetaImpl(
      computeUnitsConsumed: (json['computeUnitsConsumed'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      preTokenBalances: (json['preTokenBalances'] as List<dynamic>)
          .map((e) => TokenBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      postTokenBalances: (json['postTokenBalances'] as List<dynamic>)
          .map((e) => TokenBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      preBalances: (json['preBalances'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      postBalances: (json['postBalances'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      err: json['err'],
    );

Map<String, dynamic> _$$TransactionMetaImplToJson(
        _$TransactionMetaImpl instance) =>
    <String, dynamic>{
      'computeUnitsConsumed': instance.computeUnitsConsumed,
      'fee': instance.fee,
      'preTokenBalances': instance.preTokenBalances,
      'postTokenBalances': instance.postTokenBalances,
      'preBalances': instance.preBalances,
      'postBalances': instance.postBalances,
      'err': instance.err,
    };
