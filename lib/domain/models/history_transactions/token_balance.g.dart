// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenBalanceImpl _$$TokenBalanceImplFromJson(Map<String, dynamic> json) =>
    _$TokenBalanceImpl(
      accountIndex: (json['accountIndex'] as num).toInt(),
      mint: json['mint'] as String,
      owner: json['owner'] as String,
      programId: json['programId'] as String,
      uiTokenAmount:
          UiTokenAmount.fromJson(json['uiTokenAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenBalanceImplToJson(_$TokenBalanceImpl instance) =>
    <String, dynamic>{
      'accountIndex': instance.accountIndex,
      'mint': instance.mint,
      'owner': instance.owner,
      'programId': instance.programId,
      'uiTokenAmount': instance.uiTokenAmount,
    };
