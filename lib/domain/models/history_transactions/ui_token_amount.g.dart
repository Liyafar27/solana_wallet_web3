// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_token_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UiTokenAmountImpl _$$UiTokenAmountImplFromJson(Map<String, dynamic> json) =>
    _$UiTokenAmountImpl(
      amount: json['amount'] as String,
      decimals: (json['decimals'] as num).toInt(),
      uiAmount: (json['uiAmount'] as num?)?.toDouble(),
      uiAmountString: json['uiAmountString'] as String,
    );

Map<String, dynamic> _$$UiTokenAmountImplToJson(_$UiTokenAmountImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'decimals': instance.decimals,
      'uiAmount': instance.uiAmount,
      'uiAmountString': instance.uiAmountString,
    };
