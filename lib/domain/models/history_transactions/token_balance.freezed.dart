// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBalance _$TokenBalanceFromJson(Map<String, dynamic> json) {
  return _TokenBalance.fromJson(json);
}

/// @nodoc
mixin _$TokenBalance {
  int get accountIndex => throw _privateConstructorUsedError;
  String get mint => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get programId => throw _privateConstructorUsedError;
  UiTokenAmount get uiTokenAmount => throw _privateConstructorUsedError;

  /// Serializes this TokenBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenBalanceCopyWith<TokenBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBalanceCopyWith<$Res> {
  factory $TokenBalanceCopyWith(
          TokenBalance value, $Res Function(TokenBalance) then) =
      _$TokenBalanceCopyWithImpl<$Res, TokenBalance>;
  @useResult
  $Res call(
      {int accountIndex,
      String mint,
      String owner,
      String programId,
      UiTokenAmount uiTokenAmount});

  $UiTokenAmountCopyWith<$Res> get uiTokenAmount;
}

/// @nodoc
class _$TokenBalanceCopyWithImpl<$Res, $Val extends TokenBalance>
    implements $TokenBalanceCopyWith<$Res> {
  _$TokenBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountIndex = null,
    Object? mint = null,
    Object? owner = null,
    Object? programId = null,
    Object? uiTokenAmount = null,
  }) {
    return _then(_value.copyWith(
      accountIndex: null == accountIndex
          ? _value.accountIndex
          : accountIndex // ignore: cast_nullable_to_non_nullable
              as int,
      mint: null == mint
          ? _value.mint
          : mint // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      uiTokenAmount: null == uiTokenAmount
          ? _value.uiTokenAmount
          : uiTokenAmount // ignore: cast_nullable_to_non_nullable
              as UiTokenAmount,
    ) as $Val);
  }

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UiTokenAmountCopyWith<$Res> get uiTokenAmount {
    return $UiTokenAmountCopyWith<$Res>(_value.uiTokenAmount, (value) {
      return _then(_value.copyWith(uiTokenAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenBalanceImplCopyWith<$Res>
    implements $TokenBalanceCopyWith<$Res> {
  factory _$$TokenBalanceImplCopyWith(
          _$TokenBalanceImpl value, $Res Function(_$TokenBalanceImpl) then) =
      __$$TokenBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountIndex,
      String mint,
      String owner,
      String programId,
      UiTokenAmount uiTokenAmount});

  @override
  $UiTokenAmountCopyWith<$Res> get uiTokenAmount;
}

/// @nodoc
class __$$TokenBalanceImplCopyWithImpl<$Res>
    extends _$TokenBalanceCopyWithImpl<$Res, _$TokenBalanceImpl>
    implements _$$TokenBalanceImplCopyWith<$Res> {
  __$$TokenBalanceImplCopyWithImpl(
      _$TokenBalanceImpl _value, $Res Function(_$TokenBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountIndex = null,
    Object? mint = null,
    Object? owner = null,
    Object? programId = null,
    Object? uiTokenAmount = null,
  }) {
    return _then(_$TokenBalanceImpl(
      accountIndex: null == accountIndex
          ? _value.accountIndex
          : accountIndex // ignore: cast_nullable_to_non_nullable
              as int,
      mint: null == mint
          ? _value.mint
          : mint // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      uiTokenAmount: null == uiTokenAmount
          ? _value.uiTokenAmount
          : uiTokenAmount // ignore: cast_nullable_to_non_nullable
              as UiTokenAmount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenBalanceImpl implements _TokenBalance {
  const _$TokenBalanceImpl(
      {required this.accountIndex,
      required this.mint,
      required this.owner,
      required this.programId,
      required this.uiTokenAmount});

  factory _$TokenBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenBalanceImplFromJson(json);

  @override
  final int accountIndex;
  @override
  final String mint;
  @override
  final String owner;
  @override
  final String programId;
  @override
  final UiTokenAmount uiTokenAmount;

  @override
  String toString() {
    return 'TokenBalance(accountIndex: $accountIndex, mint: $mint, owner: $owner, programId: $programId, uiTokenAmount: $uiTokenAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenBalanceImpl &&
            (identical(other.accountIndex, accountIndex) ||
                other.accountIndex == accountIndex) &&
            (identical(other.mint, mint) || other.mint == mint) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.uiTokenAmount, uiTokenAmount) ||
                other.uiTokenAmount == uiTokenAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountIndex, mint, owner, programId, uiTokenAmount);

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenBalanceImplCopyWith<_$TokenBalanceImpl> get copyWith =>
      __$$TokenBalanceImplCopyWithImpl<_$TokenBalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenBalanceImplToJson(
      this,
    );
  }
}

abstract class _TokenBalance implements TokenBalance {
  const factory _TokenBalance(
      {required final int accountIndex,
      required final String mint,
      required final String owner,
      required final String programId,
      required final UiTokenAmount uiTokenAmount}) = _$TokenBalanceImpl;

  factory _TokenBalance.fromJson(Map<String, dynamic> json) =
      _$TokenBalanceImpl.fromJson;

  @override
  int get accountIndex;
  @override
  String get mint;
  @override
  String get owner;
  @override
  String get programId;
  @override
  UiTokenAmount get uiTokenAmount;

  /// Create a copy of TokenBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenBalanceImplCopyWith<_$TokenBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
