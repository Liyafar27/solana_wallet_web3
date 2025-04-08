// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swap_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SwapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amountSol) checkSwapFee,
    required TResult Function(double amountSol) executeSwap,
    required TResult Function() fetchSolPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amountSol)? checkSwapFee,
    TResult? Function(double amountSol)? executeSwap,
    TResult? Function()? fetchSolPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amountSol)? checkSwapFee,
    TResult Function(double amountSol)? executeSwap,
    TResult Function()? fetchSolPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSwapFee value) checkSwapFee,
    required TResult Function(ExecuteSwap value) executeSwap,
    required TResult Function(FetchSolPrice value) fetchSolPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSwapFee value)? checkSwapFee,
    TResult? Function(ExecuteSwap value)? executeSwap,
    TResult? Function(FetchSolPrice value)? fetchSolPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSwapFee value)? checkSwapFee,
    TResult Function(ExecuteSwap value)? executeSwap,
    TResult Function(FetchSolPrice value)? fetchSolPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapEventCopyWith<$Res> {
  factory $SwapEventCopyWith(SwapEvent value, $Res Function(SwapEvent) then) =
      _$SwapEventCopyWithImpl<$Res, SwapEvent>;
}

/// @nodoc
class _$SwapEventCopyWithImpl<$Res, $Val extends SwapEvent>
    implements $SwapEventCopyWith<$Res> {
  _$SwapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckSwapFeeImplCopyWith<$Res> {
  factory _$$CheckSwapFeeImplCopyWith(
          _$CheckSwapFeeImpl value, $Res Function(_$CheckSwapFeeImpl) then) =
      __$$CheckSwapFeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amountSol});
}

/// @nodoc
class __$$CheckSwapFeeImplCopyWithImpl<$Res>
    extends _$SwapEventCopyWithImpl<$Res, _$CheckSwapFeeImpl>
    implements _$$CheckSwapFeeImplCopyWith<$Res> {
  __$$CheckSwapFeeImplCopyWithImpl(
      _$CheckSwapFeeImpl _value, $Res Function(_$CheckSwapFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountSol = null,
  }) {
    return _then(_$CheckSwapFeeImpl(
      null == amountSol
          ? _value.amountSol
          : amountSol // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CheckSwapFeeImpl implements CheckSwapFee {
  const _$CheckSwapFeeImpl(this.amountSol);

  @override
  final double amountSol;

  @override
  String toString() {
    return 'SwapEvent.checkSwapFee(amountSol: $amountSol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSwapFeeImpl &&
            (identical(other.amountSol, amountSol) ||
                other.amountSol == amountSol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountSol);

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSwapFeeImplCopyWith<_$CheckSwapFeeImpl> get copyWith =>
      __$$CheckSwapFeeImplCopyWithImpl<_$CheckSwapFeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amountSol) checkSwapFee,
    required TResult Function(double amountSol) executeSwap,
    required TResult Function() fetchSolPrice,
  }) {
    return checkSwapFee(amountSol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amountSol)? checkSwapFee,
    TResult? Function(double amountSol)? executeSwap,
    TResult? Function()? fetchSolPrice,
  }) {
    return checkSwapFee?.call(amountSol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amountSol)? checkSwapFee,
    TResult Function(double amountSol)? executeSwap,
    TResult Function()? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (checkSwapFee != null) {
      return checkSwapFee(amountSol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSwapFee value) checkSwapFee,
    required TResult Function(ExecuteSwap value) executeSwap,
    required TResult Function(FetchSolPrice value) fetchSolPrice,
  }) {
    return checkSwapFee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSwapFee value)? checkSwapFee,
    TResult? Function(ExecuteSwap value)? executeSwap,
    TResult? Function(FetchSolPrice value)? fetchSolPrice,
  }) {
    return checkSwapFee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSwapFee value)? checkSwapFee,
    TResult Function(ExecuteSwap value)? executeSwap,
    TResult Function(FetchSolPrice value)? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (checkSwapFee != null) {
      return checkSwapFee(this);
    }
    return orElse();
  }
}

abstract class CheckSwapFee implements SwapEvent {
  const factory CheckSwapFee(final double amountSol) = _$CheckSwapFeeImpl;

  double get amountSol;

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckSwapFeeImplCopyWith<_$CheckSwapFeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExecuteSwapImplCopyWith<$Res> {
  factory _$$ExecuteSwapImplCopyWith(
          _$ExecuteSwapImpl value, $Res Function(_$ExecuteSwapImpl) then) =
      __$$ExecuteSwapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amountSol});
}

/// @nodoc
class __$$ExecuteSwapImplCopyWithImpl<$Res>
    extends _$SwapEventCopyWithImpl<$Res, _$ExecuteSwapImpl>
    implements _$$ExecuteSwapImplCopyWith<$Res> {
  __$$ExecuteSwapImplCopyWithImpl(
      _$ExecuteSwapImpl _value, $Res Function(_$ExecuteSwapImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountSol = null,
  }) {
    return _then(_$ExecuteSwapImpl(
      null == amountSol
          ? _value.amountSol
          : amountSol // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ExecuteSwapImpl implements ExecuteSwap {
  const _$ExecuteSwapImpl(this.amountSol);

  @override
  final double amountSol;

  @override
  String toString() {
    return 'SwapEvent.executeSwap(amountSol: $amountSol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecuteSwapImpl &&
            (identical(other.amountSol, amountSol) ||
                other.amountSol == amountSol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountSol);

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecuteSwapImplCopyWith<_$ExecuteSwapImpl> get copyWith =>
      __$$ExecuteSwapImplCopyWithImpl<_$ExecuteSwapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amountSol) checkSwapFee,
    required TResult Function(double amountSol) executeSwap,
    required TResult Function() fetchSolPrice,
  }) {
    return executeSwap(amountSol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amountSol)? checkSwapFee,
    TResult? Function(double amountSol)? executeSwap,
    TResult? Function()? fetchSolPrice,
  }) {
    return executeSwap?.call(amountSol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amountSol)? checkSwapFee,
    TResult Function(double amountSol)? executeSwap,
    TResult Function()? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (executeSwap != null) {
      return executeSwap(amountSol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSwapFee value) checkSwapFee,
    required TResult Function(ExecuteSwap value) executeSwap,
    required TResult Function(FetchSolPrice value) fetchSolPrice,
  }) {
    return executeSwap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSwapFee value)? checkSwapFee,
    TResult? Function(ExecuteSwap value)? executeSwap,
    TResult? Function(FetchSolPrice value)? fetchSolPrice,
  }) {
    return executeSwap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSwapFee value)? checkSwapFee,
    TResult Function(ExecuteSwap value)? executeSwap,
    TResult Function(FetchSolPrice value)? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (executeSwap != null) {
      return executeSwap(this);
    }
    return orElse();
  }
}

abstract class ExecuteSwap implements SwapEvent {
  const factory ExecuteSwap(final double amountSol) = _$ExecuteSwapImpl;

  double get amountSol;

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExecuteSwapImplCopyWith<_$ExecuteSwapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSolPriceImplCopyWith<$Res> {
  factory _$$FetchSolPriceImplCopyWith(
          _$FetchSolPriceImpl value, $Res Function(_$FetchSolPriceImpl) then) =
      __$$FetchSolPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSolPriceImplCopyWithImpl<$Res>
    extends _$SwapEventCopyWithImpl<$Res, _$FetchSolPriceImpl>
    implements _$$FetchSolPriceImplCopyWith<$Res> {
  __$$FetchSolPriceImplCopyWithImpl(
      _$FetchSolPriceImpl _value, $Res Function(_$FetchSolPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchSolPriceImpl implements FetchSolPrice {
  const _$FetchSolPriceImpl();

  @override
  String toString() {
    return 'SwapEvent.fetchSolPrice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSolPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amountSol) checkSwapFee,
    required TResult Function(double amountSol) executeSwap,
    required TResult Function() fetchSolPrice,
  }) {
    return fetchSolPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amountSol)? checkSwapFee,
    TResult? Function(double amountSol)? executeSwap,
    TResult? Function()? fetchSolPrice,
  }) {
    return fetchSolPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amountSol)? checkSwapFee,
    TResult Function(double amountSol)? executeSwap,
    TResult Function()? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (fetchSolPrice != null) {
      return fetchSolPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSwapFee value) checkSwapFee,
    required TResult Function(ExecuteSwap value) executeSwap,
    required TResult Function(FetchSolPrice value) fetchSolPrice,
  }) {
    return fetchSolPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSwapFee value)? checkSwapFee,
    TResult? Function(ExecuteSwap value)? executeSwap,
    TResult? Function(FetchSolPrice value)? fetchSolPrice,
  }) {
    return fetchSolPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSwapFee value)? checkSwapFee,
    TResult Function(ExecuteSwap value)? executeSwap,
    TResult Function(FetchSolPrice value)? fetchSolPrice,
    required TResult orElse(),
  }) {
    if (fetchSolPrice != null) {
      return fetchSolPrice(this);
    }
    return orElse();
  }
}

abstract class FetchSolPrice implements SwapEvent {
  const factory FetchSolPrice() = _$FetchSolPriceImpl;
}

/// @nodoc
mixin _$SwapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapStateCopyWith<$Res> {
  factory $SwapStateCopyWith(SwapState value, $Res Function(SwapState) then) =
      _$SwapStateCopyWithImpl<$Res, SwapState>;
}

/// @nodoc
class _$SwapStateCopyWithImpl<$Res, $Val extends SwapState>
    implements $SwapStateCopyWith<$Res> {
  _$SwapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SwapInitialImplCopyWith<$Res> {
  factory _$$SwapInitialImplCopyWith(
          _$SwapInitialImpl value, $Res Function(_$SwapInitialImpl) then) =
      __$$SwapInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapInitialImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SwapInitialImpl>
    implements _$$SwapInitialImplCopyWith<$Res> {
  __$$SwapInitialImplCopyWithImpl(
      _$SwapInitialImpl _value, $Res Function(_$SwapInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwapInitialImpl implements SwapInitial {
  const _$SwapInitialImpl();

  @override
  String toString() {
    return 'SwapState.swapInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return swapInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return swapInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapInitial != null) {
      return swapInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return swapInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return swapInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapInitial != null) {
      return swapInitial(this);
    }
    return orElse();
  }
}

abstract class SwapInitial implements SwapState {
  const factory SwapInitial() = _$SwapInitialImpl;
}

/// @nodoc
abstract class _$$SwapFeeLoadedImplCopyWith<$Res> {
  factory _$$SwapFeeLoadedImplCopyWith(
          _$SwapFeeLoadedImpl value, $Res Function(_$SwapFeeLoadedImpl) then) =
      __$$SwapFeeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double estimatedFee});
}

/// @nodoc
class __$$SwapFeeLoadedImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SwapFeeLoadedImpl>
    implements _$$SwapFeeLoadedImplCopyWith<$Res> {
  __$$SwapFeeLoadedImplCopyWithImpl(
      _$SwapFeeLoadedImpl _value, $Res Function(_$SwapFeeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estimatedFee = null,
  }) {
    return _then(_$SwapFeeLoadedImpl(
      null == estimatedFee
          ? _value.estimatedFee
          : estimatedFee // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SwapFeeLoadedImpl implements SwapFeeLoaded {
  const _$SwapFeeLoadedImpl(this.estimatedFee);

  @override
  final double estimatedFee;

  @override
  String toString() {
    return 'SwapState.swapFeeLoaded(estimatedFee: $estimatedFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapFeeLoadedImpl &&
            (identical(other.estimatedFee, estimatedFee) ||
                other.estimatedFee == estimatedFee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, estimatedFee);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapFeeLoadedImplCopyWith<_$SwapFeeLoadedImpl> get copyWith =>
      __$$SwapFeeLoadedImplCopyWithImpl<_$SwapFeeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return swapFeeLoaded(estimatedFee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return swapFeeLoaded?.call(estimatedFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapFeeLoaded != null) {
      return swapFeeLoaded(estimatedFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return swapFeeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return swapFeeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapFeeLoaded != null) {
      return swapFeeLoaded(this);
    }
    return orElse();
  }
}

abstract class SwapFeeLoaded implements SwapState {
  const factory SwapFeeLoaded(final double estimatedFee) = _$SwapFeeLoadedImpl;

  double get estimatedFee;

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapFeeLoadedImplCopyWith<_$SwapFeeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapLoadingImplCopyWith<$Res> {
  factory _$$SwapLoadingImplCopyWith(
          _$SwapLoadingImpl value, $Res Function(_$SwapLoadingImpl) then) =
      __$$SwapLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapLoadingImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SwapLoadingImpl>
    implements _$$SwapLoadingImplCopyWith<$Res> {
  __$$SwapLoadingImplCopyWithImpl(
      _$SwapLoadingImpl _value, $Res Function(_$SwapLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwapLoadingImpl implements SwapLoading {
  const _$SwapLoadingImpl();

  @override
  String toString() {
    return 'SwapState.swapLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return swapLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return swapLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapLoading != null) {
      return swapLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return swapLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return swapLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapLoading != null) {
      return swapLoading(this);
    }
    return orElse();
  }
}

abstract class SwapLoading implements SwapState {
  const factory SwapLoading() = _$SwapLoadingImpl;
}

/// @nodoc
abstract class _$$SwapSuccessImplCopyWith<$Res> {
  factory _$$SwapSuccessImplCopyWith(
          _$SwapSuccessImpl value, $Res Function(_$SwapSuccessImpl) then) =
      __$$SwapSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String txSignature});
}

/// @nodoc
class __$$SwapSuccessImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SwapSuccessImpl>
    implements _$$SwapSuccessImplCopyWith<$Res> {
  __$$SwapSuccessImplCopyWithImpl(
      _$SwapSuccessImpl _value, $Res Function(_$SwapSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txSignature = null,
  }) {
    return _then(_$SwapSuccessImpl(
      null == txSignature
          ? _value.txSignature
          : txSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapSuccessImpl implements SwapSuccess {
  const _$SwapSuccessImpl(this.txSignature);

  @override
  final String txSignature;

  @override
  String toString() {
    return 'SwapState.swapSuccess(txSignature: $txSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapSuccessImpl &&
            (identical(other.txSignature, txSignature) ||
                other.txSignature == txSignature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txSignature);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapSuccessImplCopyWith<_$SwapSuccessImpl> get copyWith =>
      __$$SwapSuccessImplCopyWithImpl<_$SwapSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return swapSuccess(txSignature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return swapSuccess?.call(txSignature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapSuccess != null) {
      return swapSuccess(txSignature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return swapSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return swapSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapSuccess != null) {
      return swapSuccess(this);
    }
    return orElse();
  }
}

abstract class SwapSuccess implements SwapState {
  const factory SwapSuccess(final String txSignature) = _$SwapSuccessImpl;

  String get txSignature;

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapSuccessImplCopyWith<_$SwapSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapErrorImplCopyWith<$Res> {
  factory _$$SwapErrorImplCopyWith(
          _$SwapErrorImpl value, $Res Function(_$SwapErrorImpl) then) =
      __$$SwapErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SwapErrorImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SwapErrorImpl>
    implements _$$SwapErrorImplCopyWith<$Res> {
  __$$SwapErrorImplCopyWithImpl(
      _$SwapErrorImpl _value, $Res Function(_$SwapErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SwapErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapErrorImpl implements SwapError {
  const _$SwapErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SwapState.swapError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapErrorImplCopyWith<_$SwapErrorImpl> get copyWith =>
      __$$SwapErrorImplCopyWithImpl<_$SwapErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return swapError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return swapError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapError != null) {
      return swapError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return swapError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return swapError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (swapError != null) {
      return swapError(this);
    }
    return orElse();
  }
}

abstract class SwapError implements SwapState {
  const factory SwapError(final String message) = _$SwapErrorImpl;

  String get message;

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapErrorImplCopyWith<_$SwapErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SolPriceLoadedImplCopyWith<$Res> {
  factory _$$SolPriceLoadedImplCopyWith(_$SolPriceLoadedImpl value,
          $Res Function(_$SolPriceLoadedImpl) then) =
      __$$SolPriceLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double solPrice});
}

/// @nodoc
class __$$SolPriceLoadedImplCopyWithImpl<$Res>
    extends _$SwapStateCopyWithImpl<$Res, _$SolPriceLoadedImpl>
    implements _$$SolPriceLoadedImplCopyWith<$Res> {
  __$$SolPriceLoadedImplCopyWithImpl(
      _$SolPriceLoadedImpl _value, $Res Function(_$SolPriceLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? solPrice = null,
  }) {
    return _then(_$SolPriceLoadedImpl(
      null == solPrice
          ? _value.solPrice
          : solPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SolPriceLoadedImpl implements SolPriceLoaded {
  const _$SolPriceLoadedImpl(this.solPrice);

  @override
  final double solPrice;

  @override
  String toString() {
    return 'SwapState.solPriceLoaded(solPrice: $solPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolPriceLoadedImpl &&
            (identical(other.solPrice, solPrice) ||
                other.solPrice == solPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, solPrice);

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolPriceLoadedImplCopyWith<_$SolPriceLoadedImpl> get copyWith =>
      __$$SolPriceLoadedImplCopyWithImpl<_$SolPriceLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() swapInitial,
    required TResult Function(double estimatedFee) swapFeeLoaded,
    required TResult Function() swapLoading,
    required TResult Function(String txSignature) swapSuccess,
    required TResult Function(String message) swapError,
    required TResult Function(double solPrice) solPriceLoaded,
  }) {
    return solPriceLoaded(solPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? swapInitial,
    TResult? Function(double estimatedFee)? swapFeeLoaded,
    TResult? Function()? swapLoading,
    TResult? Function(String txSignature)? swapSuccess,
    TResult? Function(String message)? swapError,
    TResult? Function(double solPrice)? solPriceLoaded,
  }) {
    return solPriceLoaded?.call(solPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? swapInitial,
    TResult Function(double estimatedFee)? swapFeeLoaded,
    TResult Function()? swapLoading,
    TResult Function(String txSignature)? swapSuccess,
    TResult Function(String message)? swapError,
    TResult Function(double solPrice)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (solPriceLoaded != null) {
      return solPriceLoaded(solPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwapInitial value) swapInitial,
    required TResult Function(SwapFeeLoaded value) swapFeeLoaded,
    required TResult Function(SwapLoading value) swapLoading,
    required TResult Function(SwapSuccess value) swapSuccess,
    required TResult Function(SwapError value) swapError,
    required TResult Function(SolPriceLoaded value) solPriceLoaded,
  }) {
    return solPriceLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwapInitial value)? swapInitial,
    TResult? Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult? Function(SwapLoading value)? swapLoading,
    TResult? Function(SwapSuccess value)? swapSuccess,
    TResult? Function(SwapError value)? swapError,
    TResult? Function(SolPriceLoaded value)? solPriceLoaded,
  }) {
    return solPriceLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwapInitial value)? swapInitial,
    TResult Function(SwapFeeLoaded value)? swapFeeLoaded,
    TResult Function(SwapLoading value)? swapLoading,
    TResult Function(SwapSuccess value)? swapSuccess,
    TResult Function(SwapError value)? swapError,
    TResult Function(SolPriceLoaded value)? solPriceLoaded,
    required TResult orElse(),
  }) {
    if (solPriceLoaded != null) {
      return solPriceLoaded(this);
    }
    return orElse();
  }
}

abstract class SolPriceLoaded implements SwapState {
  const factory SolPriceLoaded(final double solPrice) = _$SolPriceLoadedImpl;

  double get solPrice;

  /// Create a copy of SwapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolPriceLoadedImplCopyWith<_$SolPriceLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
