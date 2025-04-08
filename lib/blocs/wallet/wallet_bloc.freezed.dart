// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectWalletImplCopyWith<$Res> {
  factory _$$ConnectWalletImplCopyWith(
          _$ConnectWalletImpl value, $Res Function(_$ConnectWalletImpl) then) =
      __$$ConnectWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? mnemonic});
}

/// @nodoc
class __$$ConnectWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ConnectWalletImpl>
    implements _$$ConnectWalletImplCopyWith<$Res> {
  __$$ConnectWalletImplCopyWithImpl(
      _$ConnectWalletImpl _value, $Res Function(_$ConnectWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonic = freezed,
  }) {
    return _then(_$ConnectWalletImpl(
      mnemonic: freezed == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectWalletImpl implements ConnectWallet {
  const _$ConnectWalletImpl({this.mnemonic});

  @override
  final String? mnemonic;

  @override
  String toString() {
    return 'WalletEvent.connectWallet(mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectWalletImpl &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mnemonic);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectWalletImplCopyWith<_$ConnectWalletImpl> get copyWith =>
      __$$ConnectWalletImplCopyWithImpl<_$ConnectWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return connectWallet(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return connectWallet?.call(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (connectWallet != null) {
      return connectWallet(mnemonic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return connectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return connectWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (connectWallet != null) {
      return connectWallet(this);
    }
    return orElse();
  }
}

abstract class ConnectWallet implements WalletEvent {
  const factory ConnectWallet({final String? mnemonic}) = _$ConnectWalletImpl;

  String? get mnemonic;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectWalletImplCopyWith<_$ConnectWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectWalletImplCopyWith<$Res> {
  factory _$$DisconnectWalletImplCopyWith(_$DisconnectWalletImpl value,
          $Res Function(_$DisconnectWalletImpl) then) =
      __$$DisconnectWalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$DisconnectWalletImpl>
    implements _$$DisconnectWalletImplCopyWith<$Res> {
  __$$DisconnectWalletImplCopyWithImpl(_$DisconnectWalletImpl _value,
      $Res Function(_$DisconnectWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectWalletImpl implements DisconnectWallet {
  const _$DisconnectWalletImpl();

  @override
  String toString() {
    return 'WalletEvent.disconnectWallet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectWalletImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return disconnectWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return disconnectWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (disconnectWallet != null) {
      return disconnectWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return disconnectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return disconnectWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (disconnectWallet != null) {
      return disconnectWallet(this);
    }
    return orElse();
  }
}

abstract class DisconnectWallet implements WalletEvent {
  const factory DisconnectWallet() = _$DisconnectWalletImpl;
}

/// @nodoc
abstract class _$$GenerateNewWalletImplCopyWith<$Res> {
  factory _$$GenerateNewWalletImplCopyWith(_$GenerateNewWalletImpl value,
          $Res Function(_$GenerateNewWalletImpl) then) =
      __$$GenerateNewWalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateNewWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$GenerateNewWalletImpl>
    implements _$$GenerateNewWalletImplCopyWith<$Res> {
  __$$GenerateNewWalletImplCopyWithImpl(_$GenerateNewWalletImpl _value,
      $Res Function(_$GenerateNewWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GenerateNewWalletImpl implements GenerateNewWallet {
  const _$GenerateNewWalletImpl();

  @override
  String toString() {
    return 'WalletEvent.generateNewWallet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateNewWalletImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return generateNewWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return generateNewWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (generateNewWallet != null) {
      return generateNewWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return generateNewWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return generateNewWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (generateNewWallet != null) {
      return generateNewWallet(this);
    }
    return orElse();
  }
}

abstract class GenerateNewWallet implements WalletEvent {
  const factory GenerateNewWallet() = _$GenerateNewWalletImpl;
}

/// @nodoc
abstract class _$$RestoreWalletImplCopyWith<$Res> {
  factory _$$RestoreWalletImplCopyWith(
          _$RestoreWalletImpl value, $Res Function(_$RestoreWalletImpl) then) =
      __$$RestoreWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mnemonic});
}

/// @nodoc
class __$$RestoreWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$RestoreWalletImpl>
    implements _$$RestoreWalletImplCopyWith<$Res> {
  __$$RestoreWalletImplCopyWithImpl(
      _$RestoreWalletImpl _value, $Res Function(_$RestoreWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonic = null,
  }) {
    return _then(_$RestoreWalletImpl(
      null == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestoreWalletImpl implements RestoreWallet {
  const _$RestoreWalletImpl(this.mnemonic);

  @override
  final String mnemonic;

  @override
  String toString() {
    return 'WalletEvent.restoreWallet(mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreWalletImpl &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mnemonic);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreWalletImplCopyWith<_$RestoreWalletImpl> get copyWith =>
      __$$RestoreWalletImplCopyWithImpl<_$RestoreWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return restoreWallet(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return restoreWallet?.call(mnemonic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (restoreWallet != null) {
      return restoreWallet(mnemonic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return restoreWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return restoreWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (restoreWallet != null) {
      return restoreWallet(this);
    }
    return orElse();
  }
}

abstract class RestoreWallet implements WalletEvent {
  const factory RestoreWallet(final String mnemonic) = _$RestoreWalletImpl;

  String get mnemonic;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestoreWalletImplCopyWith<_$RestoreWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWalletBalanceImplCopyWith<$Res> {
  factory _$$UpdateWalletBalanceImplCopyWith(_$UpdateWalletBalanceImpl value,
          $Res Function(_$UpdateWalletBalanceImpl) then) =
      __$$UpdateWalletBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$UpdateWalletBalanceImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$UpdateWalletBalanceImpl>
    implements _$$UpdateWalletBalanceImplCopyWith<$Res> {
  __$$UpdateWalletBalanceImplCopyWithImpl(_$UpdateWalletBalanceImpl _value,
      $Res Function(_$UpdateWalletBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$UpdateWalletBalanceImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateWalletBalanceImpl implements UpdateWalletBalance {
  const _$UpdateWalletBalanceImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'WalletEvent.updateWalletBalance(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWalletBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWalletBalanceImplCopyWith<_$UpdateWalletBalanceImpl> get copyWith =>
      __$$UpdateWalletBalanceImplCopyWithImpl<_$UpdateWalletBalanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return updateWalletBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return updateWalletBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (updateWalletBalance != null) {
      return updateWalletBalance(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return updateWalletBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return updateWalletBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (updateWalletBalance != null) {
      return updateWalletBalance(this);
    }
    return orElse();
  }
}

abstract class UpdateWalletBalance implements WalletEvent {
  const factory UpdateWalletBalance(final double balance) =
      _$UpdateWalletBalanceImpl;

  double get balance;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWalletBalanceImplCopyWith<_$UpdateWalletBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNetworkImplCopyWith<$Res> {
  factory _$$ChangeNetworkImplCopyWith(
          _$ChangeNetworkImpl value, $Res Function(_$ChangeNetworkImpl) then) =
      __$$ChangeNetworkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String network});
}

/// @nodoc
class __$$ChangeNetworkImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ChangeNetworkImpl>
    implements _$$ChangeNetworkImplCopyWith<$Res> {
  __$$ChangeNetworkImplCopyWithImpl(
      _$ChangeNetworkImpl _value, $Res Function(_$ChangeNetworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
  }) {
    return _then(_$ChangeNetworkImpl(
      null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNetworkImpl implements ChangeNetwork {
  const _$ChangeNetworkImpl(this.network);

  @override
  final String network;

  @override
  String toString() {
    return 'WalletEvent.changeNetwork(network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNetworkImpl &&
            (identical(other.network, network) || other.network == network));
  }

  @override
  int get hashCode => Object.hash(runtimeType, network);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNetworkImplCopyWith<_$ChangeNetworkImpl> get copyWith =>
      __$$ChangeNetworkImplCopyWithImpl<_$ChangeNetworkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return changeNetwork(network);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return changeNetwork?.call(network);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (changeNetwork != null) {
      return changeNetwork(network);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return changeNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return changeNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (changeNetwork != null) {
      return changeNetwork(this);
    }
    return orElse();
  }
}

abstract class ChangeNetwork implements WalletEvent {
  const factory ChangeNetwork(final String network) = _$ChangeNetworkImpl;

  String get network;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNetworkImplCopyWith<_$ChangeNetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshBalanceImplCopyWith<$Res> {
  factory _$$RefreshBalanceImplCopyWith(_$RefreshBalanceImpl value,
          $Res Function(_$RefreshBalanceImpl) then) =
      __$$RefreshBalanceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshBalanceImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$RefreshBalanceImpl>
    implements _$$RefreshBalanceImplCopyWith<$Res> {
  __$$RefreshBalanceImplCopyWithImpl(
      _$RefreshBalanceImpl _value, $Res Function(_$RefreshBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshBalanceImpl implements RefreshBalance {
  const _$RefreshBalanceImpl();

  @override
  String toString() {
    return 'WalletEvent.refreshBalance()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshBalanceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return refreshBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return refreshBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (refreshBalance != null) {
      return refreshBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return refreshBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return refreshBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (refreshBalance != null) {
      return refreshBalance(this);
    }
    return orElse();
  }
}

abstract class RefreshBalance implements WalletEvent {
  const factory RefreshBalance() = _$RefreshBalanceImpl;
}

/// @nodoc
abstract class _$$CheckNetworkLoadImplCopyWith<$Res> {
  factory _$$CheckNetworkLoadImplCopyWith(_$CheckNetworkLoadImpl value,
          $Res Function(_$CheckNetworkLoadImpl) then) =
      __$$CheckNetworkLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckNetworkLoadImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$CheckNetworkLoadImpl>
    implements _$$CheckNetworkLoadImplCopyWith<$Res> {
  __$$CheckNetworkLoadImplCopyWithImpl(_$CheckNetworkLoadImpl _value,
      $Res Function(_$CheckNetworkLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckNetworkLoadImpl implements CheckNetworkLoad {
  const _$CheckNetworkLoadImpl();

  @override
  String toString() {
    return 'WalletEvent.checkNetworkLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckNetworkLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return checkNetworkLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return checkNetworkLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (checkNetworkLoad != null) {
      return checkNetworkLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return checkNetworkLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return checkNetworkLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (checkNetworkLoad != null) {
      return checkNetworkLoad(this);
    }
    return orElse();
  }
}

abstract class CheckNetworkLoad implements WalletEvent {
  const factory CheckNetworkLoad() = _$CheckNetworkLoadImpl;
}

/// @nodoc
abstract class _$$SwapSolToUsdtImplCopyWith<$Res> {
  factory _$$SwapSolToUsdtImplCopyWith(
          _$SwapSolToUsdtImpl value, $Res Function(_$SwapSolToUsdtImpl) then) =
      __$$SwapSolToUsdtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$SwapSolToUsdtImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$SwapSolToUsdtImpl>
    implements _$$SwapSolToUsdtImplCopyWith<$Res> {
  __$$SwapSolToUsdtImplCopyWithImpl(
      _$SwapSolToUsdtImpl _value, $Res Function(_$SwapSolToUsdtImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$SwapSolToUsdtImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SwapSolToUsdtImpl implements SwapSolToUsdt {
  const _$SwapSolToUsdtImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'WalletEvent.swapSolToUsdt(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapSolToUsdtImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapSolToUsdtImplCopyWith<_$SwapSolToUsdtImpl> get copyWith =>
      __$$SwapSolToUsdtImplCopyWithImpl<_$SwapSolToUsdtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return swapSolToUsdt(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return swapSolToUsdt?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (swapSolToUsdt != null) {
      return swapSolToUsdt(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return swapSolToUsdt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return swapSolToUsdt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (swapSolToUsdt != null) {
      return swapSolToUsdt(this);
    }
    return orElse();
  }
}

abstract class SwapSolToUsdt implements WalletEvent {
  const factory SwapSolToUsdt(final double amount) = _$SwapSolToUsdtImpl;

  double get amount;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapSolToUsdtImplCopyWith<_$SwapSolToUsdtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapUsdtToSolImplCopyWith<$Res> {
  factory _$$SwapUsdtToSolImplCopyWith(
          _$SwapUsdtToSolImpl value, $Res Function(_$SwapUsdtToSolImpl) then) =
      __$$SwapUsdtToSolImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$SwapUsdtToSolImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$SwapUsdtToSolImpl>
    implements _$$SwapUsdtToSolImplCopyWith<$Res> {
  __$$SwapUsdtToSolImplCopyWithImpl(
      _$SwapUsdtToSolImpl _value, $Res Function(_$SwapUsdtToSolImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$SwapUsdtToSolImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SwapUsdtToSolImpl implements SwapUsdtToSol {
  const _$SwapUsdtToSolImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'WalletEvent.swapUsdtToSol(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapUsdtToSolImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapUsdtToSolImplCopyWith<_$SwapUsdtToSolImpl> get copyWith =>
      __$$SwapUsdtToSolImplCopyWithImpl<_$SwapUsdtToSolImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mnemonic) connectWallet,
    required TResult Function() disconnectWallet,
    required TResult Function() generateNewWallet,
    required TResult Function(String mnemonic) restoreWallet,
    required TResult Function(double balance) updateWalletBalance,
    required TResult Function(String network) changeNetwork,
    required TResult Function() refreshBalance,
    required TResult Function() checkNetworkLoad,
    required TResult Function(double amount) swapSolToUsdt,
    required TResult Function(double amount) swapUsdtToSol,
  }) {
    return swapUsdtToSol(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? mnemonic)? connectWallet,
    TResult? Function()? disconnectWallet,
    TResult? Function()? generateNewWallet,
    TResult? Function(String mnemonic)? restoreWallet,
    TResult? Function(double balance)? updateWalletBalance,
    TResult? Function(String network)? changeNetwork,
    TResult? Function()? refreshBalance,
    TResult? Function()? checkNetworkLoad,
    TResult? Function(double amount)? swapSolToUsdt,
    TResult? Function(double amount)? swapUsdtToSol,
  }) {
    return swapUsdtToSol?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mnemonic)? connectWallet,
    TResult Function()? disconnectWallet,
    TResult Function()? generateNewWallet,
    TResult Function(String mnemonic)? restoreWallet,
    TResult Function(double balance)? updateWalletBalance,
    TResult Function(String network)? changeNetwork,
    TResult Function()? refreshBalance,
    TResult Function()? checkNetworkLoad,
    TResult Function(double amount)? swapSolToUsdt,
    TResult Function(double amount)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (swapUsdtToSol != null) {
      return swapUsdtToSol(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectWallet value) connectWallet,
    required TResult Function(DisconnectWallet value) disconnectWallet,
    required TResult Function(GenerateNewWallet value) generateNewWallet,
    required TResult Function(RestoreWallet value) restoreWallet,
    required TResult Function(UpdateWalletBalance value) updateWalletBalance,
    required TResult Function(ChangeNetwork value) changeNetwork,
    required TResult Function(RefreshBalance value) refreshBalance,
    required TResult Function(CheckNetworkLoad value) checkNetworkLoad,
    required TResult Function(SwapSolToUsdt value) swapSolToUsdt,
    required TResult Function(SwapUsdtToSol value) swapUsdtToSol,
  }) {
    return swapUsdtToSol(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectWallet value)? connectWallet,
    TResult? Function(DisconnectWallet value)? disconnectWallet,
    TResult? Function(GenerateNewWallet value)? generateNewWallet,
    TResult? Function(RestoreWallet value)? restoreWallet,
    TResult? Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult? Function(ChangeNetwork value)? changeNetwork,
    TResult? Function(RefreshBalance value)? refreshBalance,
    TResult? Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult? Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult? Function(SwapUsdtToSol value)? swapUsdtToSol,
  }) {
    return swapUsdtToSol?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectWallet value)? connectWallet,
    TResult Function(DisconnectWallet value)? disconnectWallet,
    TResult Function(GenerateNewWallet value)? generateNewWallet,
    TResult Function(RestoreWallet value)? restoreWallet,
    TResult Function(UpdateWalletBalance value)? updateWalletBalance,
    TResult Function(ChangeNetwork value)? changeNetwork,
    TResult Function(RefreshBalance value)? refreshBalance,
    TResult Function(CheckNetworkLoad value)? checkNetworkLoad,
    TResult Function(SwapSolToUsdt value)? swapSolToUsdt,
    TResult Function(SwapUsdtToSol value)? swapUsdtToSol,
    required TResult orElse(),
  }) {
    if (swapUsdtToSol != null) {
      return swapUsdtToSol(this);
    }
    return orElse();
  }
}

abstract class SwapUsdtToSol implements WalletEvent {
  const factory SwapUsdtToSol(final double amount) = _$SwapUsdtToSolImpl;

  double get amount;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapUsdtToSolImplCopyWith<_$SwapUsdtToSolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WalletInitialImplCopyWith<$Res> {
  factory _$$WalletInitialImplCopyWith(
          _$WalletInitialImpl value, $Res Function(_$WalletInitialImpl) then) =
      __$$WalletInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletInitialImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletInitialImpl>
    implements _$$WalletInitialImplCopyWith<$Res> {
  __$$WalletInitialImplCopyWithImpl(
      _$WalletInitialImpl _value, $Res Function(_$WalletInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WalletInitialImpl implements WalletInitial {
  const _$WalletInitialImpl();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WalletInitial implements WalletState {
  const factory WalletInitial() = _$WalletInitialImpl;
}

/// @nodoc
abstract class _$$WalletLoadingImplCopyWith<$Res> {
  factory _$$WalletLoadingImplCopyWith(
          _$WalletLoadingImpl value, $Res Function(_$WalletLoadingImpl) then) =
      __$$WalletLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletLoadingImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletLoadingImpl>
    implements _$$WalletLoadingImplCopyWith<$Res> {
  __$$WalletLoadingImplCopyWithImpl(
      _$WalletLoadingImpl _value, $Res Function(_$WalletLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WalletLoadingImpl implements WalletLoading {
  const _$WalletLoadingImpl();

  @override
  String toString() {
    return 'WalletState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletLoading implements WalletState {
  const factory WalletLoading() = _$WalletLoadingImpl;
}

/// @nodoc
abstract class _$$WalletConnectedImplCopyWith<$Res> {
  factory _$$WalletConnectedImplCopyWith(_$WalletConnectedImpl value,
          $Res Function(_$WalletConnectedImpl) then) =
      __$$WalletConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? mnemonic, WalletInfo wallet});

  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$WalletConnectedImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletConnectedImpl>
    implements _$$WalletConnectedImplCopyWith<$Res> {
  __$$WalletConnectedImplCopyWithImpl(
      _$WalletConnectedImpl _value, $Res Function(_$WalletConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = null,
  }) {
    return _then(_$WalletConnectedImpl(
      mnemonic: freezed == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
    ));
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$WalletConnectedImpl implements WalletConnected {
  const _$WalletConnectedImpl({this.mnemonic, required this.wallet});

  @override
  final String? mnemonic;
  @override
  final WalletInfo wallet;

  @override
  String toString() {
    return 'WalletState.connected(mnemonic: $mnemonic, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectedImpl &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic) &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mnemonic, wallet);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletConnectedImplCopyWith<_$WalletConnectedImpl> get copyWith =>
      __$$WalletConnectedImplCopyWithImpl<_$WalletConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return connected(mnemonic, wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return connected?.call(mnemonic, wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(mnemonic, wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class WalletConnected implements WalletState {
  const factory WalletConnected(
      {final String? mnemonic,
      required final WalletInfo wallet}) = _$WalletConnectedImpl;

  String? get mnemonic;
  WalletInfo get wallet;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletConnectedImplCopyWith<_$WalletConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletDisconnectedImplCopyWith<$Res> {
  factory _$$WalletDisconnectedImplCopyWith(_$WalletDisconnectedImpl value,
          $Res Function(_$WalletDisconnectedImpl) then) =
      __$$WalletDisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletDisconnectedImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletDisconnectedImpl>
    implements _$$WalletDisconnectedImplCopyWith<$Res> {
  __$$WalletDisconnectedImplCopyWithImpl(_$WalletDisconnectedImpl _value,
      $Res Function(_$WalletDisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WalletDisconnectedImpl implements WalletDisconnected {
  const _$WalletDisconnectedImpl();

  @override
  String toString() {
    return 'WalletState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletDisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class WalletDisconnected implements WalletState {
  const factory WalletDisconnected() = _$WalletDisconnectedImpl;
}

/// @nodoc
abstract class _$$WalletErrorImplCopyWith<$Res> {
  factory _$$WalletErrorImplCopyWith(
          _$WalletErrorImpl value, $Res Function(_$WalletErrorImpl) then) =
      __$$WalletErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WalletErrorImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletErrorImpl>
    implements _$$WalletErrorImplCopyWith<$Res> {
  __$$WalletErrorImplCopyWithImpl(
      _$WalletErrorImpl _value, $Res Function(_$WalletErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WalletErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletErrorImpl implements WalletError {
  const _$WalletErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WalletState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletErrorImplCopyWith<_$WalletErrorImpl> get copyWith =>
      __$$WalletErrorImplCopyWithImpl<_$WalletErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WalletError implements WalletState {
  const factory WalletError(final String message) = _$WalletErrorImpl;

  String get message;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletErrorImplCopyWith<_$WalletErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkLoadCheckedImplCopyWith<$Res> {
  factory _$$NetworkLoadCheckedImplCopyWith(_$NetworkLoadCheckedImpl value,
          $Res Function(_$NetworkLoadCheckedImpl) then) =
      __$$NetworkLoadCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int load});
}

/// @nodoc
class __$$NetworkLoadCheckedImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$NetworkLoadCheckedImpl>
    implements _$$NetworkLoadCheckedImplCopyWith<$Res> {
  __$$NetworkLoadCheckedImplCopyWithImpl(_$NetworkLoadCheckedImpl _value,
      $Res Function(_$NetworkLoadCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? load = null,
  }) {
    return _then(_$NetworkLoadCheckedImpl(
      null == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NetworkLoadCheckedImpl implements NetworkLoadChecked {
  const _$NetworkLoadCheckedImpl(this.load);

  @override
  final int load;

  @override
  String toString() {
    return 'WalletState.networkLoadChecked(load: $load)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkLoadCheckedImpl &&
            (identical(other.load, load) || other.load == load));
  }

  @override
  int get hashCode => Object.hash(runtimeType, load);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkLoadCheckedImplCopyWith<_$NetworkLoadCheckedImpl> get copyWith =>
      __$$NetworkLoadCheckedImplCopyWithImpl<_$NetworkLoadCheckedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? mnemonic, WalletInfo wallet) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function(int load) networkLoadChecked,
  }) {
    return networkLoadChecked(load);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function(int load)? networkLoadChecked,
  }) {
    return networkLoadChecked?.call(load);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? mnemonic, WalletInfo wallet)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function(int load)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (networkLoadChecked != null) {
      return networkLoadChecked(load);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletConnected value) connected,
    required TResult Function(WalletDisconnected value) disconnected,
    required TResult Function(WalletError value) error,
    required TResult Function(NetworkLoadChecked value) networkLoadChecked,
  }) {
    return networkLoadChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletConnected value)? connected,
    TResult? Function(WalletDisconnected value)? disconnected,
    TResult? Function(WalletError value)? error,
    TResult? Function(NetworkLoadChecked value)? networkLoadChecked,
  }) {
    return networkLoadChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletConnected value)? connected,
    TResult Function(WalletDisconnected value)? disconnected,
    TResult Function(WalletError value)? error,
    TResult Function(NetworkLoadChecked value)? networkLoadChecked,
    required TResult orElse(),
  }) {
    if (networkLoadChecked != null) {
      return networkLoadChecked(this);
    }
    return orElse();
  }
}

abstract class NetworkLoadChecked implements WalletState {
  const factory NetworkLoadChecked(final int load) = _$NetworkLoadCheckedImpl;

  int get load;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkLoadCheckedImplCopyWith<_$NetworkLoadCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletInfo {
  String get address => throw _privateConstructorUsedError;
  double get solBalance => throw _privateConstructorUsedError;
  double get usdcBalance => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  bool get isBalanceLoading => throw _privateConstructorUsedError;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res, WalletInfo>;
  @useResult
  $Res call(
      {String address,
      double solBalance,
      double usdcBalance,
      bool isConnected,
      String network,
      bool isBalanceLoading});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res, $Val extends WalletInfo>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? solBalance = null,
    Object? usdcBalance = null,
    Object? isConnected = null,
    Object? network = null,
    Object? isBalanceLoading = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      solBalance: null == solBalance
          ? _value.solBalance
          : solBalance // ignore: cast_nullable_to_non_nullable
              as double,
      usdcBalance: null == usdcBalance
          ? _value.usdcBalance
          : usdcBalance // ignore: cast_nullable_to_non_nullable
              as double,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      isBalanceLoading: null == isBalanceLoading
          ? _value.isBalanceLoading
          : isBalanceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletInfoImplCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$WalletInfoImplCopyWith(
          _$WalletInfoImpl value, $Res Function(_$WalletInfoImpl) then) =
      __$$WalletInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      double solBalance,
      double usdcBalance,
      bool isConnected,
      String network,
      bool isBalanceLoading});
}

/// @nodoc
class __$$WalletInfoImplCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$WalletInfoImpl>
    implements _$$WalletInfoImplCopyWith<$Res> {
  __$$WalletInfoImplCopyWithImpl(
      _$WalletInfoImpl _value, $Res Function(_$WalletInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? solBalance = null,
    Object? usdcBalance = null,
    Object? isConnected = null,
    Object? network = null,
    Object? isBalanceLoading = null,
  }) {
    return _then(_$WalletInfoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      solBalance: null == solBalance
          ? _value.solBalance
          : solBalance // ignore: cast_nullable_to_non_nullable
              as double,
      usdcBalance: null == usdcBalance
          ? _value.usdcBalance
          : usdcBalance // ignore: cast_nullable_to_non_nullable
              as double,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      isBalanceLoading: null == isBalanceLoading
          ? _value.isBalanceLoading
          : isBalanceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WalletInfoImpl implements _WalletInfo {
  const _$WalletInfoImpl(
      {required this.address,
      required this.solBalance,
      required this.usdcBalance,
      required this.isConnected,
      required this.network,
      required this.isBalanceLoading});

  @override
  final String address;
  @override
  final double solBalance;
  @override
  final double usdcBalance;
  @override
  final bool isConnected;
  @override
  final String network;
  @override
  final bool isBalanceLoading;

  @override
  String toString() {
    return 'WalletInfo(address: $address, solBalance: $solBalance, usdcBalance: $usdcBalance, isConnected: $isConnected, network: $network, isBalanceLoading: $isBalanceLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInfoImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.solBalance, solBalance) ||
                other.solBalance == solBalance) &&
            (identical(other.usdcBalance, usdcBalance) ||
                other.usdcBalance == usdcBalance) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.isBalanceLoading, isBalanceLoading) ||
                other.isBalanceLoading == isBalanceLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, solBalance, usdcBalance,
      isConnected, network, isBalanceLoading);

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      __$$WalletInfoImplCopyWithImpl<_$WalletInfoImpl>(this, _$identity);
}

abstract class _WalletInfo implements WalletInfo {
  const factory _WalletInfo(
      {required final String address,
      required final double solBalance,
      required final double usdcBalance,
      required final bool isConnected,
      required final String network,
      required final bool isBalanceLoading}) = _$WalletInfoImpl;

  @override
  String get address;
  @override
  double get solBalance;
  @override
  double get usdcBalance;
  @override
  bool get isConnected;
  @override
  String get network;
  @override
  bool get isBalanceLoading;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
