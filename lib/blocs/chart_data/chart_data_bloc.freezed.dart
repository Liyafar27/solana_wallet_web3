// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartDataEvent {
  String get symbol => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get rsiPeriod => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol, String interval, int limit, int rsiPeriod)
        load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String interval, int limit, int rsiPeriod)?
        load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String interval, int limit, int rsiPeriod)?
        load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChartDataEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChartDataEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChartDataEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChartDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartDataEventCopyWith<ChartDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataEventCopyWith<$Res> {
  factory $ChartDataEventCopyWith(
          ChartDataEvent value, $Res Function(ChartDataEvent) then) =
      _$ChartDataEventCopyWithImpl<$Res, ChartDataEvent>;
  @useResult
  $Res call({String symbol, String interval, int limit, int rsiPeriod});
}

/// @nodoc
class _$ChartDataEventCopyWithImpl<$Res, $Val extends ChartDataEvent>
    implements $ChartDataEventCopyWith<$Res> {
  _$ChartDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? interval = null,
    Object? limit = null,
    Object? rsiPeriod = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      rsiPeriod: null == rsiPeriod
          ? _value.rsiPeriod
          : rsiPeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadChartDataEventImplCopyWith<$Res>
    implements $ChartDataEventCopyWith<$Res> {
  factory _$$LoadChartDataEventImplCopyWith(_$LoadChartDataEventImpl value,
          $Res Function(_$LoadChartDataEventImpl) then) =
      __$$LoadChartDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String interval, int limit, int rsiPeriod});
}

/// @nodoc
class __$$LoadChartDataEventImplCopyWithImpl<$Res>
    extends _$ChartDataEventCopyWithImpl<$Res, _$LoadChartDataEventImpl>
    implements _$$LoadChartDataEventImplCopyWith<$Res> {
  __$$LoadChartDataEventImplCopyWithImpl(_$LoadChartDataEventImpl _value,
      $Res Function(_$LoadChartDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? interval = null,
    Object? limit = null,
    Object? rsiPeriod = null,
  }) {
    return _then(_$LoadChartDataEventImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      rsiPeriod: null == rsiPeriod
          ? _value.rsiPeriod
          : rsiPeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadChartDataEventImpl implements LoadChartDataEvent {
  const _$LoadChartDataEventImpl(
      {required this.symbol,
      required this.interval,
      required this.limit,
      required this.rsiPeriod});

  @override
  final String symbol;
  @override
  final String interval;
  @override
  final int limit;
  @override
  final int rsiPeriod;

  @override
  String toString() {
    return 'ChartDataEvent.load(symbol: $symbol, interval: $interval, limit: $limit, rsiPeriod: $rsiPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadChartDataEventImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.rsiPeriod, rsiPeriod) ||
                other.rsiPeriod == rsiPeriod));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, interval, limit, rsiPeriod);

  /// Create a copy of ChartDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadChartDataEventImplCopyWith<_$LoadChartDataEventImpl> get copyWith =>
      __$$LoadChartDataEventImplCopyWithImpl<_$LoadChartDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol, String interval, int limit, int rsiPeriod)
        load,
  }) {
    return load(symbol, interval, limit, rsiPeriod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String interval, int limit, int rsiPeriod)?
        load,
  }) {
    return load?.call(symbol, interval, limit, rsiPeriod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String interval, int limit, int rsiPeriod)?
        load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(symbol, interval, limit, rsiPeriod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChartDataEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChartDataEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChartDataEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadChartDataEvent implements ChartDataEvent {
  const factory LoadChartDataEvent(
      {required final String symbol,
      required final String interval,
      required final int limit,
      required final int rsiPeriod}) = _$LoadChartDataEventImpl;

  @override
  String get symbol;
  @override
  String get interval;
  @override
  int get limit;
  @override
  int get rsiPeriod;

  /// Create a copy of ChartDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadChartDataEventImplCopyWith<_$LoadChartDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartDataInitial value) initial,
    required TResult Function(ChartDataLoading value) loading,
    required TResult Function(ChartDataLoaded value) loaded,
    required TResult Function(ChartDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartDataInitial value)? initial,
    TResult? Function(ChartDataLoading value)? loading,
    TResult? Function(ChartDataLoaded value)? loaded,
    TResult? Function(ChartDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartDataInitial value)? initial,
    TResult Function(ChartDataLoading value)? loading,
    TResult Function(ChartDataLoaded value)? loaded,
    TResult Function(ChartDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataStateCopyWith<$Res> {
  factory $ChartDataStateCopyWith(
          ChartDataState value, $Res Function(ChartDataState) then) =
      _$ChartDataStateCopyWithImpl<$Res, ChartDataState>;
}

/// @nodoc
class _$ChartDataStateCopyWithImpl<$Res, $Val extends ChartDataState>
    implements $ChartDataStateCopyWith<$Res> {
  _$ChartDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChartDataInitialImplCopyWith<$Res> {
  factory _$$ChartDataInitialImplCopyWith(_$ChartDataInitialImpl value,
          $Res Function(_$ChartDataInitialImpl) then) =
      __$$ChartDataInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartDataInitialImplCopyWithImpl<$Res>
    extends _$ChartDataStateCopyWithImpl<$Res, _$ChartDataInitialImpl>
    implements _$$ChartDataInitialImplCopyWith<$Res> {
  __$$ChartDataInitialImplCopyWithImpl(_$ChartDataInitialImpl _value,
      $Res Function(_$ChartDataInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChartDataInitialImpl implements ChartDataInitial {
  const _$ChartDataInitialImpl();

  @override
  String toString() {
    return 'ChartDataState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartDataInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartDataInitial value) initial,
    required TResult Function(ChartDataLoading value) loading,
    required TResult Function(ChartDataLoaded value) loaded,
    required TResult Function(ChartDataError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartDataInitial value)? initial,
    TResult? Function(ChartDataLoading value)? loading,
    TResult? Function(ChartDataLoaded value)? loaded,
    TResult? Function(ChartDataError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartDataInitial value)? initial,
    TResult Function(ChartDataLoading value)? loading,
    TResult Function(ChartDataLoaded value)? loaded,
    TResult Function(ChartDataError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChartDataInitial implements ChartDataState {
  const factory ChartDataInitial() = _$ChartDataInitialImpl;
}

/// @nodoc
abstract class _$$ChartDataLoadingImplCopyWith<$Res> {
  factory _$$ChartDataLoadingImplCopyWith(_$ChartDataLoadingImpl value,
          $Res Function(_$ChartDataLoadingImpl) then) =
      __$$ChartDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartDataLoadingImplCopyWithImpl<$Res>
    extends _$ChartDataStateCopyWithImpl<$Res, _$ChartDataLoadingImpl>
    implements _$$ChartDataLoadingImplCopyWith<$Res> {
  __$$ChartDataLoadingImplCopyWithImpl(_$ChartDataLoadingImpl _value,
      $Res Function(_$ChartDataLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChartDataLoadingImpl implements ChartDataLoading {
  const _$ChartDataLoadingImpl();

  @override
  String toString() {
    return 'ChartDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartDataInitial value) initial,
    required TResult Function(ChartDataLoading value) loading,
    required TResult Function(ChartDataLoaded value) loaded,
    required TResult Function(ChartDataError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartDataInitial value)? initial,
    TResult? Function(ChartDataLoading value)? loading,
    TResult? Function(ChartDataLoaded value)? loaded,
    TResult? Function(ChartDataError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartDataInitial value)? initial,
    TResult Function(ChartDataLoading value)? loading,
    TResult Function(ChartDataLoaded value)? loaded,
    TResult Function(ChartDataError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChartDataLoading implements ChartDataState {
  const factory ChartDataLoading() = _$ChartDataLoadingImpl;
}

/// @nodoc
abstract class _$$ChartDataLoadedImplCopyWith<$Res> {
  factory _$$ChartDataLoadedImplCopyWith(_$ChartDataLoadedImpl value,
          $Res Function(_$ChartDataLoadedImpl) then) =
      __$$ChartDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CandleData> candles,
      List<RSIData> rsiData,
      Map<String, double> fbbLevels});
}

/// @nodoc
class __$$ChartDataLoadedImplCopyWithImpl<$Res>
    extends _$ChartDataStateCopyWithImpl<$Res, _$ChartDataLoadedImpl>
    implements _$$ChartDataLoadedImplCopyWith<$Res> {
  __$$ChartDataLoadedImplCopyWithImpl(
      _$ChartDataLoadedImpl _value, $Res Function(_$ChartDataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candles = null,
    Object? rsiData = null,
    Object? fbbLevels = null,
  }) {
    return _then(_$ChartDataLoadedImpl(
      candles: null == candles
          ? _value._candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<CandleData>,
      rsiData: null == rsiData
          ? _value._rsiData
          : rsiData // ignore: cast_nullable_to_non_nullable
              as List<RSIData>,
      fbbLevels: null == fbbLevels
          ? _value._fbbLevels
          : fbbLevels // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

class _$ChartDataLoadedImpl implements ChartDataLoaded {
  const _$ChartDataLoadedImpl(
      {required final List<CandleData> candles,
      required final List<RSIData> rsiData,
      required final Map<String, double> fbbLevels})
      : _candles = candles,
        _rsiData = rsiData,
        _fbbLevels = fbbLevels;

  final List<CandleData> _candles;
  @override
  List<CandleData> get candles {
    if (_candles is EqualUnmodifiableListView) return _candles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candles);
  }

  final List<RSIData> _rsiData;
  @override
  List<RSIData> get rsiData {
    if (_rsiData is EqualUnmodifiableListView) return _rsiData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rsiData);
  }

  final Map<String, double> _fbbLevels;
  @override
  Map<String, double> get fbbLevels {
    if (_fbbLevels is EqualUnmodifiableMapView) return _fbbLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fbbLevels);
  }

  @override
  String toString() {
    return 'ChartDataState.loaded(candles: $candles, rsiData: $rsiData, fbbLevels: $fbbLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataLoadedImpl &&
            const DeepCollectionEquality().equals(other._candles, _candles) &&
            const DeepCollectionEquality().equals(other._rsiData, _rsiData) &&
            const DeepCollectionEquality()
                .equals(other._fbbLevels, _fbbLevels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_candles),
      const DeepCollectionEquality().hash(_rsiData),
      const DeepCollectionEquality().hash(_fbbLevels));

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataLoadedImplCopyWith<_$ChartDataLoadedImpl> get copyWith =>
      __$$ChartDataLoadedImplCopyWithImpl<_$ChartDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(candles, rsiData, fbbLevels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(candles, rsiData, fbbLevels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(candles, rsiData, fbbLevels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartDataInitial value) initial,
    required TResult Function(ChartDataLoading value) loading,
    required TResult Function(ChartDataLoaded value) loaded,
    required TResult Function(ChartDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartDataInitial value)? initial,
    TResult? Function(ChartDataLoading value)? loading,
    TResult? Function(ChartDataLoaded value)? loaded,
    TResult? Function(ChartDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartDataInitial value)? initial,
    TResult Function(ChartDataLoading value)? loading,
    TResult Function(ChartDataLoaded value)? loaded,
    TResult Function(ChartDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChartDataLoaded implements ChartDataState {
  const factory ChartDataLoaded(
      {required final List<CandleData> candles,
      required final List<RSIData> rsiData,
      required final Map<String, double> fbbLevels}) = _$ChartDataLoadedImpl;

  List<CandleData> get candles;
  List<RSIData> get rsiData;
  Map<String, double> get fbbLevels;

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartDataLoadedImplCopyWith<_$ChartDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChartDataErrorImplCopyWith<$Res> {
  factory _$$ChartDataErrorImplCopyWith(_$ChartDataErrorImpl value,
          $Res Function(_$ChartDataErrorImpl) then) =
      __$$ChartDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChartDataErrorImplCopyWithImpl<$Res>
    extends _$ChartDataStateCopyWithImpl<$Res, _$ChartDataErrorImpl>
    implements _$$ChartDataErrorImplCopyWith<$Res> {
  __$$ChartDataErrorImplCopyWithImpl(
      _$ChartDataErrorImpl _value, $Res Function(_$ChartDataErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChartDataErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChartDataErrorImpl implements ChartDataError {
  const _$ChartDataErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChartDataState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataErrorImplCopyWith<_$ChartDataErrorImpl> get copyWith =>
      __$$ChartDataErrorImplCopyWithImpl<_$ChartDataErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CandleData> candles, List<RSIData> rsiData,
            Map<String, double> fbbLevels)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartDataInitial value) initial,
    required TResult Function(ChartDataLoading value) loading,
    required TResult Function(ChartDataLoaded value) loaded,
    required TResult Function(ChartDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartDataInitial value)? initial,
    TResult? Function(ChartDataLoading value)? loading,
    TResult? Function(ChartDataLoaded value)? loaded,
    TResult? Function(ChartDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartDataInitial value)? initial,
    TResult Function(ChartDataLoading value)? loading,
    TResult Function(ChartDataLoaded value)? loaded,
    TResult Function(ChartDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChartDataError implements ChartDataState {
  const factory ChartDataError({required final String message}) =
      _$ChartDataErrorImpl;

  String get message;

  /// Create a copy of ChartDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartDataErrorImplCopyWith<_$ChartDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
