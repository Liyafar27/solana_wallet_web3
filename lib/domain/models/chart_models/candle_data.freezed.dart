// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candle_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CandleData _$CandleDataFromJson(Map<String, dynamic> json) {
  return _CandleData.fromJson(json);
}

/// @nodoc
mixin _$CandleData {
  DateTime get date => throw _privateConstructorUsedError;
  double get open => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this CandleData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CandleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CandleDataCopyWith<CandleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandleDataCopyWith<$Res> {
  factory $CandleDataCopyWith(
          CandleData value, $Res Function(CandleData) then) =
      _$CandleDataCopyWithImpl<$Res, CandleData>;
  @useResult
  $Res call(
      {DateTime date,
      double open,
      double high,
      double low,
      double close,
      double volume});
}

/// @nodoc
class _$CandleDataCopyWithImpl<$Res, $Val extends CandleData>
    implements $CandleDataCopyWith<$Res> {
  _$CandleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CandleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CandleDataImplCopyWith<$Res>
    implements $CandleDataCopyWith<$Res> {
  factory _$$CandleDataImplCopyWith(
          _$CandleDataImpl value, $Res Function(_$CandleDataImpl) then) =
      __$$CandleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double open,
      double high,
      double low,
      double close,
      double volume});
}

/// @nodoc
class __$$CandleDataImplCopyWithImpl<$Res>
    extends _$CandleDataCopyWithImpl<$Res, _$CandleDataImpl>
    implements _$$CandleDataImplCopyWith<$Res> {
  __$$CandleDataImplCopyWithImpl(
      _$CandleDataImpl _value, $Res Function(_$CandleDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CandleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_$CandleDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandleDataImpl implements _CandleData {
  const _$CandleDataImpl(
      {required this.date,
      required this.open,
      required this.high,
      required this.low,
      required this.close,
      required this.volume});

  factory _$CandleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandleDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double open;
  @override
  final double high;
  @override
  final double low;
  @override
  final double close;
  @override
  final double volume;

  @override
  String toString() {
    return 'CandleData(date: $date, open: $open, high: $high, low: $low, close: $close, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandleDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, open, high, low, close, volume);

  /// Create a copy of CandleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CandleDataImplCopyWith<_$CandleDataImpl> get copyWith =>
      __$$CandleDataImplCopyWithImpl<_$CandleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandleDataImplToJson(
      this,
    );
  }
}

abstract class _CandleData implements CandleData {
  const factory _CandleData(
      {required final DateTime date,
      required final double open,
      required final double high,
      required final double low,
      required final double close,
      required final double volume}) = _$CandleDataImpl;

  factory _CandleData.fromJson(Map<String, dynamic> json) =
      _$CandleDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get open;
  @override
  double get high;
  @override
  double get low;
  @override
  double get close;
  @override
  double get volume;

  /// Create a copy of CandleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CandleDataImplCopyWith<_$CandleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
