// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rsi_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RSIData _$RSIDataFromJson(Map<String, dynamic> json) {
  return _RSIData.fromJson(json);
}

/// @nodoc
mixin _$RSIData {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this RSIData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RSIData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RSIDataCopyWith<RSIData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSIDataCopyWith<$Res> {
  factory $RSIDataCopyWith(RSIData value, $Res Function(RSIData) then) =
      _$RSIDataCopyWithImpl<$Res, RSIData>;
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$RSIDataCopyWithImpl<$Res, $Val extends RSIData>
    implements $RSIDataCopyWith<$Res> {
  _$RSIDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RSIData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RSIDataImplCopyWith<$Res> implements $RSIDataCopyWith<$Res> {
  factory _$$RSIDataImplCopyWith(
          _$RSIDataImpl value, $Res Function(_$RSIDataImpl) then) =
      __$$RSIDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$RSIDataImplCopyWithImpl<$Res>
    extends _$RSIDataCopyWithImpl<$Res, _$RSIDataImpl>
    implements _$$RSIDataImplCopyWith<$Res> {
  __$$RSIDataImplCopyWithImpl(
      _$RSIDataImpl _value, $Res Function(_$RSIDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RSIData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$RSIDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RSIDataImpl implements _RSIData {
  const _$RSIDataImpl({required this.date, required this.value});

  factory _$RSIDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RSIDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'RSIData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RSIDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of RSIData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RSIDataImplCopyWith<_$RSIDataImpl> get copyWith =>
      __$$RSIDataImplCopyWithImpl<_$RSIDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RSIDataImplToJson(
      this,
    );
  }
}

abstract class _RSIData implements RSIData {
  const factory _RSIData(
      {required final DateTime date,
      required final double value}) = _$RSIDataImpl;

  factory _RSIData.fromJson(Map<String, dynamic> json) = _$RSIDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get value;

  /// Create a copy of RSIData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RSIDataImplCopyWith<_$RSIDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
