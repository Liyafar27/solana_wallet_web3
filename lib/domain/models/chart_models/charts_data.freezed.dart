// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charts_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChartsData _$ChartsDataFromJson(Map<String, dynamic> json) {
  return _ChartsData.fromJson(json);
}

/// @nodoc
mixin _$ChartsData {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this ChartsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChartsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartsDataCopyWith<ChartsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartsDataCopyWith<$Res> {
  factory $ChartsDataCopyWith(
          ChartsData value, $Res Function(ChartsData) then) =
      _$ChartsDataCopyWithImpl<$Res, ChartsData>;
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$ChartsDataCopyWithImpl<$Res, $Val extends ChartsData>
    implements $ChartsDataCopyWith<$Res> {
  _$ChartsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartsData
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
abstract class _$$ChartsDataImplCopyWith<$Res>
    implements $ChartsDataCopyWith<$Res> {
  factory _$$ChartsDataImplCopyWith(
          _$ChartsDataImpl value, $Res Function(_$ChartsDataImpl) then) =
      __$$ChartsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$ChartsDataImplCopyWithImpl<$Res>
    extends _$ChartsDataCopyWithImpl<$Res, _$ChartsDataImpl>
    implements _$$ChartsDataImplCopyWith<$Res> {
  __$$ChartsDataImplCopyWithImpl(
      _$ChartsDataImpl _value, $Res Function(_$ChartsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$ChartsDataImpl(
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
class _$ChartsDataImpl implements _ChartsData {
  const _$ChartsDataImpl({required this.date, required this.value});

  factory _$ChartsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartsDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'ChartsData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartsDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of ChartsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartsDataImplCopyWith<_$ChartsDataImpl> get copyWith =>
      __$$ChartsDataImplCopyWithImpl<_$ChartsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartsDataImplToJson(
      this,
    );
  }
}

abstract class _ChartsData implements ChartsData {
  const factory _ChartsData(
      {required final DateTime date,
      required final double value}) = _$ChartsDataImpl;

  factory _ChartsData.fromJson(Map<String, dynamic> json) =
      _$ChartsDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get value;

  /// Create a copy of ChartsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartsDataImplCopyWith<_$ChartsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
