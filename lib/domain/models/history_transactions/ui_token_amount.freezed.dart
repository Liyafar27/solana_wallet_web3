// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_token_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UiTokenAmount _$UiTokenAmountFromJson(Map<String, dynamic> json) {
  return _UiTokenAmount.fromJson(json);
}

/// @nodoc
mixin _$UiTokenAmount {
  String get amount => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  double? get uiAmount => throw _privateConstructorUsedError;
  String get uiAmountString => throw _privateConstructorUsedError;

  /// Serializes this UiTokenAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UiTokenAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiTokenAmountCopyWith<UiTokenAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiTokenAmountCopyWith<$Res> {
  factory $UiTokenAmountCopyWith(
          UiTokenAmount value, $Res Function(UiTokenAmount) then) =
      _$UiTokenAmountCopyWithImpl<$Res, UiTokenAmount>;
  @useResult
  $Res call(
      {String amount, int decimals, double? uiAmount, String uiAmountString});
}

/// @nodoc
class _$UiTokenAmountCopyWithImpl<$Res, $Val extends UiTokenAmount>
    implements $UiTokenAmountCopyWith<$Res> {
  _$UiTokenAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiTokenAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? decimals = null,
    Object? uiAmount = freezed,
    Object? uiAmountString = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      uiAmount: freezed == uiAmount
          ? _value.uiAmount
          : uiAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      uiAmountString: null == uiAmountString
          ? _value.uiAmountString
          : uiAmountString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiTokenAmountImplCopyWith<$Res>
    implements $UiTokenAmountCopyWith<$Res> {
  factory _$$UiTokenAmountImplCopyWith(
          _$UiTokenAmountImpl value, $Res Function(_$UiTokenAmountImpl) then) =
      __$$UiTokenAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String amount, int decimals, double? uiAmount, String uiAmountString});
}

/// @nodoc
class __$$UiTokenAmountImplCopyWithImpl<$Res>
    extends _$UiTokenAmountCopyWithImpl<$Res, _$UiTokenAmountImpl>
    implements _$$UiTokenAmountImplCopyWith<$Res> {
  __$$UiTokenAmountImplCopyWithImpl(
      _$UiTokenAmountImpl _value, $Res Function(_$UiTokenAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiTokenAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? decimals = null,
    Object? uiAmount = freezed,
    Object? uiAmountString = null,
  }) {
    return _then(_$UiTokenAmountImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      uiAmount: freezed == uiAmount
          ? _value.uiAmount
          : uiAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      uiAmountString: null == uiAmountString
          ? _value.uiAmountString
          : uiAmountString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UiTokenAmountImpl implements _UiTokenAmount {
  const _$UiTokenAmountImpl(
      {required this.amount,
      required this.decimals,
      this.uiAmount,
      required this.uiAmountString});

  factory _$UiTokenAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$UiTokenAmountImplFromJson(json);

  @override
  final String amount;
  @override
  final int decimals;
  @override
  final double? uiAmount;
  @override
  final String uiAmountString;

  @override
  String toString() {
    return 'UiTokenAmount(amount: $amount, decimals: $decimals, uiAmount: $uiAmount, uiAmountString: $uiAmountString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiTokenAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.uiAmount, uiAmount) ||
                other.uiAmount == uiAmount) &&
            (identical(other.uiAmountString, uiAmountString) ||
                other.uiAmountString == uiAmountString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, decimals, uiAmount, uiAmountString);

  /// Create a copy of UiTokenAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiTokenAmountImplCopyWith<_$UiTokenAmountImpl> get copyWith =>
      __$$UiTokenAmountImplCopyWithImpl<_$UiTokenAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UiTokenAmountImplToJson(
      this,
    );
  }
}

abstract class _UiTokenAmount implements UiTokenAmount {
  const factory _UiTokenAmount(
      {required final String amount,
      required final int decimals,
      final double? uiAmount,
      required final String uiAmountString}) = _$UiTokenAmountImpl;

  factory _UiTokenAmount.fromJson(Map<String, dynamic> json) =
      _$UiTokenAmountImpl.fromJson;

  @override
  String get amount;
  @override
  int get decimals;
  @override
  double? get uiAmount;
  @override
  String get uiAmountString;

  /// Create a copy of UiTokenAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiTokenAmountImplCopyWith<_$UiTokenAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
