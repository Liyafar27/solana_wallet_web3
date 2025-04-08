// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionInfo _$TransactionInfoFromJson(Map<String, dynamic> json) {
  return _TransactionInfo.fromJson(json);
}

/// @nodoc
mixin _$TransactionInfo {
  int get slot => throw _privateConstructorUsedError;
  int get blockTime => throw _privateConstructorUsedError;
  TransactionMeta get meta => throw _privateConstructorUsedError;

  /// Serializes this TransactionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionInfoCopyWith<TransactionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInfoCopyWith<$Res> {
  factory $TransactionInfoCopyWith(
          TransactionInfo value, $Res Function(TransactionInfo) then) =
      _$TransactionInfoCopyWithImpl<$Res, TransactionInfo>;
  @useResult
  $Res call({int slot, int blockTime, TransactionMeta meta});

  $TransactionMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$TransactionInfoCopyWithImpl<$Res, $Val extends TransactionInfo>
    implements $TransactionInfoCopyWith<$Res> {
  _$TransactionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? blockTime = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as TransactionMeta,
    ) as $Val);
  }

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionMetaCopyWith<$Res> get meta {
    return $TransactionMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionInfoImplCopyWith<$Res>
    implements $TransactionInfoCopyWith<$Res> {
  factory _$$TransactionInfoImplCopyWith(_$TransactionInfoImpl value,
          $Res Function(_$TransactionInfoImpl) then) =
      __$$TransactionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, int blockTime, TransactionMeta meta});

  @override
  $TransactionMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$TransactionInfoImplCopyWithImpl<$Res>
    extends _$TransactionInfoCopyWithImpl<$Res, _$TransactionInfoImpl>
    implements _$$TransactionInfoImplCopyWith<$Res> {
  __$$TransactionInfoImplCopyWithImpl(
      _$TransactionInfoImpl _value, $Res Function(_$TransactionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? blockTime = null,
    Object? meta = null,
  }) {
    return _then(_$TransactionInfoImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as TransactionMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionInfoImpl implements _TransactionInfo {
  const _$TransactionInfoImpl(
      {required this.slot, required this.blockTime, required this.meta});

  factory _$TransactionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionInfoImplFromJson(json);

  @override
  final int slot;
  @override
  final int blockTime;
  @override
  final TransactionMeta meta;

  @override
  String toString() {
    return 'TransactionInfo(slot: $slot, blockTime: $blockTime, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, blockTime, meta);

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInfoImplCopyWith<_$TransactionInfoImpl> get copyWith =>
      __$$TransactionInfoImplCopyWithImpl<_$TransactionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionInfoImplToJson(
      this,
    );
  }
}

abstract class _TransactionInfo implements TransactionInfo {
  const factory _TransactionInfo(
      {required final int slot,
      required final int blockTime,
      required final TransactionMeta meta}) = _$TransactionInfoImpl;

  factory _TransactionInfo.fromJson(Map<String, dynamic> json) =
      _$TransactionInfoImpl.fromJson;

  @override
  int get slot;
  @override
  int get blockTime;
  @override
  TransactionMeta get meta;

  /// Create a copy of TransactionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionInfoImplCopyWith<_$TransactionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
