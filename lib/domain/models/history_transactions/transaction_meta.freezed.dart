// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionMeta _$TransactionMetaFromJson(Map<String, dynamic> json) {
  return _TransactionMeta.fromJson(json);
}

/// @nodoc
mixin _$TransactionMeta {
  int get computeUnitsConsumed => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;
  List<TokenBalance> get preTokenBalances => throw _privateConstructorUsedError;
  List<TokenBalance> get postTokenBalances =>
      throw _privateConstructorUsedError;
  List<int> get preBalances => throw _privateConstructorUsedError;
  List<int> get postBalances => throw _privateConstructorUsedError;
  dynamic get err => throw _privateConstructorUsedError;

  /// Serializes this TransactionMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionMetaCopyWith<TransactionMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMetaCopyWith<$Res> {
  factory $TransactionMetaCopyWith(
          TransactionMeta value, $Res Function(TransactionMeta) then) =
      _$TransactionMetaCopyWithImpl<$Res, TransactionMeta>;
  @useResult
  $Res call(
      {int computeUnitsConsumed,
      int fee,
      List<TokenBalance> preTokenBalances,
      List<TokenBalance> postTokenBalances,
      List<int> preBalances,
      List<int> postBalances,
      dynamic err});
}

/// @nodoc
class _$TransactionMetaCopyWithImpl<$Res, $Val extends TransactionMeta>
    implements $TransactionMetaCopyWith<$Res> {
  _$TransactionMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computeUnitsConsumed = null,
    Object? fee = null,
    Object? preTokenBalances = null,
    Object? postTokenBalances = null,
    Object? preBalances = null,
    Object? postBalances = null,
    Object? err = freezed,
  }) {
    return _then(_value.copyWith(
      computeUnitsConsumed: null == computeUnitsConsumed
          ? _value.computeUnitsConsumed
          : computeUnitsConsumed // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      preTokenBalances: null == preTokenBalances
          ? _value.preTokenBalances
          : preTokenBalances // ignore: cast_nullable_to_non_nullable
              as List<TokenBalance>,
      postTokenBalances: null == postTokenBalances
          ? _value.postTokenBalances
          : postTokenBalances // ignore: cast_nullable_to_non_nullable
              as List<TokenBalance>,
      preBalances: null == preBalances
          ? _value.preBalances
          : preBalances // ignore: cast_nullable_to_non_nullable
              as List<int>,
      postBalances: null == postBalances
          ? _value.postBalances
          : postBalances // ignore: cast_nullable_to_non_nullable
              as List<int>,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionMetaImplCopyWith<$Res>
    implements $TransactionMetaCopyWith<$Res> {
  factory _$$TransactionMetaImplCopyWith(_$TransactionMetaImpl value,
          $Res Function(_$TransactionMetaImpl) then) =
      __$$TransactionMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int computeUnitsConsumed,
      int fee,
      List<TokenBalance> preTokenBalances,
      List<TokenBalance> postTokenBalances,
      List<int> preBalances,
      List<int> postBalances,
      dynamic err});
}

/// @nodoc
class __$$TransactionMetaImplCopyWithImpl<$Res>
    extends _$TransactionMetaCopyWithImpl<$Res, _$TransactionMetaImpl>
    implements _$$TransactionMetaImplCopyWith<$Res> {
  __$$TransactionMetaImplCopyWithImpl(
      _$TransactionMetaImpl _value, $Res Function(_$TransactionMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computeUnitsConsumed = null,
    Object? fee = null,
    Object? preTokenBalances = null,
    Object? postTokenBalances = null,
    Object? preBalances = null,
    Object? postBalances = null,
    Object? err = freezed,
  }) {
    return _then(_$TransactionMetaImpl(
      computeUnitsConsumed: null == computeUnitsConsumed
          ? _value.computeUnitsConsumed
          : computeUnitsConsumed // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      preTokenBalances: null == preTokenBalances
          ? _value._preTokenBalances
          : preTokenBalances // ignore: cast_nullable_to_non_nullable
              as List<TokenBalance>,
      postTokenBalances: null == postTokenBalances
          ? _value._postTokenBalances
          : postTokenBalances // ignore: cast_nullable_to_non_nullable
              as List<TokenBalance>,
      preBalances: null == preBalances
          ? _value._preBalances
          : preBalances // ignore: cast_nullable_to_non_nullable
              as List<int>,
      postBalances: null == postBalances
          ? _value._postBalances
          : postBalances // ignore: cast_nullable_to_non_nullable
              as List<int>,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionMetaImpl implements _TransactionMeta {
  const _$TransactionMetaImpl(
      {required this.computeUnitsConsumed,
      required this.fee,
      required final List<TokenBalance> preTokenBalances,
      required final List<TokenBalance> postTokenBalances,
      required final List<int> preBalances,
      required final List<int> postBalances,
      this.err})
      : _preTokenBalances = preTokenBalances,
        _postTokenBalances = postTokenBalances,
        _preBalances = preBalances,
        _postBalances = postBalances;

  factory _$TransactionMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionMetaImplFromJson(json);

  @override
  final int computeUnitsConsumed;
  @override
  final int fee;
  final List<TokenBalance> _preTokenBalances;
  @override
  List<TokenBalance> get preTokenBalances {
    if (_preTokenBalances is EqualUnmodifiableListView)
      return _preTokenBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preTokenBalances);
  }

  final List<TokenBalance> _postTokenBalances;
  @override
  List<TokenBalance> get postTokenBalances {
    if (_postTokenBalances is EqualUnmodifiableListView)
      return _postTokenBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postTokenBalances);
  }

  final List<int> _preBalances;
  @override
  List<int> get preBalances {
    if (_preBalances is EqualUnmodifiableListView) return _preBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preBalances);
  }

  final List<int> _postBalances;
  @override
  List<int> get postBalances {
    if (_postBalances is EqualUnmodifiableListView) return _postBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postBalances);
  }

  @override
  final dynamic err;

  @override
  String toString() {
    return 'TransactionMeta(computeUnitsConsumed: $computeUnitsConsumed, fee: $fee, preTokenBalances: $preTokenBalances, postTokenBalances: $postTokenBalances, preBalances: $preBalances, postBalances: $postBalances, err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionMetaImpl &&
            (identical(other.computeUnitsConsumed, computeUnitsConsumed) ||
                other.computeUnitsConsumed == computeUnitsConsumed) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality()
                .equals(other._preTokenBalances, _preTokenBalances) &&
            const DeepCollectionEquality()
                .equals(other._postTokenBalances, _postTokenBalances) &&
            const DeepCollectionEquality()
                .equals(other._preBalances, _preBalances) &&
            const DeepCollectionEquality()
                .equals(other._postBalances, _postBalances) &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      computeUnitsConsumed,
      fee,
      const DeepCollectionEquality().hash(_preTokenBalances),
      const DeepCollectionEquality().hash(_postTokenBalances),
      const DeepCollectionEquality().hash(_preBalances),
      const DeepCollectionEquality().hash(_postBalances),
      const DeepCollectionEquality().hash(err));

  /// Create a copy of TransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionMetaImplCopyWith<_$TransactionMetaImpl> get copyWith =>
      __$$TransactionMetaImplCopyWithImpl<_$TransactionMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionMetaImplToJson(
      this,
    );
  }
}

abstract class _TransactionMeta implements TransactionMeta {
  const factory _TransactionMeta(
      {required final int computeUnitsConsumed,
      required final int fee,
      required final List<TokenBalance> preTokenBalances,
      required final List<TokenBalance> postTokenBalances,
      required final List<int> preBalances,
      required final List<int> postBalances,
      final dynamic err}) = _$TransactionMetaImpl;

  factory _TransactionMeta.fromJson(Map<String, dynamic> json) =
      _$TransactionMetaImpl.fromJson;

  @override
  int get computeUnitsConsumed;
  @override
  int get fee;
  @override
  List<TokenBalance> get preTokenBalances;
  @override
  List<TokenBalance> get postTokenBalances;
  @override
  List<int> get preBalances;
  @override
  List<int> get postBalances;
  @override
  dynamic get err;

  /// Create a copy of TransactionMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionMetaImplCopyWith<_$TransactionMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
