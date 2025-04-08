// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryTransactionInitial value) initial,
    required TResult Function(HistoryTransactionLoading value) loading,
    required TResult Function(HistoryTransactionLoaded value) loaded,
    required TResult Function(HistoryTransactionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryTransactionInitial value)? initial,
    TResult? Function(HistoryTransactionLoading value)? loading,
    TResult? Function(HistoryTransactionLoaded value)? loaded,
    TResult? Function(HistoryTransactionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryTransactionInitial value)? initial,
    TResult Function(HistoryTransactionLoading value)? loading,
    TResult Function(HistoryTransactionLoaded value)? loaded,
    TResult Function(HistoryTransactionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryTransactionStateCopyWith<$Res> {
  factory $HistoryTransactionStateCopyWith(HistoryTransactionState value,
          $Res Function(HistoryTransactionState) then) =
      _$HistoryTransactionStateCopyWithImpl<$Res, HistoryTransactionState>;
}

/// @nodoc
class _$HistoryTransactionStateCopyWithImpl<$Res,
        $Val extends HistoryTransactionState>
    implements $HistoryTransactionStateCopyWith<$Res> {
  _$HistoryTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HistoryTransactionInitialImplCopyWith<$Res> {
  factory _$$HistoryTransactionInitialImplCopyWith(
          _$HistoryTransactionInitialImpl value,
          $Res Function(_$HistoryTransactionInitialImpl) then) =
      __$$HistoryTransactionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryTransactionInitialImplCopyWithImpl<$Res>
    extends _$HistoryTransactionStateCopyWithImpl<$Res,
        _$HistoryTransactionInitialImpl>
    implements _$$HistoryTransactionInitialImplCopyWith<$Res> {
  __$$HistoryTransactionInitialImplCopyWithImpl(
      _$HistoryTransactionInitialImpl _value,
      $Res Function(_$HistoryTransactionInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HistoryTransactionInitialImpl
    with DiagnosticableTreeMixin
    implements HistoryTransactionInitial {
  const _$HistoryTransactionInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransactionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)
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
    TResult? Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    required TResult Function(HistoryTransactionInitial value) initial,
    required TResult Function(HistoryTransactionLoading value) loading,
    required TResult Function(HistoryTransactionLoaded value) loaded,
    required TResult Function(HistoryTransactionError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryTransactionInitial value)? initial,
    TResult? Function(HistoryTransactionLoading value)? loading,
    TResult? Function(HistoryTransactionLoaded value)? loaded,
    TResult? Function(HistoryTransactionError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryTransactionInitial value)? initial,
    TResult Function(HistoryTransactionLoading value)? loading,
    TResult Function(HistoryTransactionLoaded value)? loaded,
    TResult Function(HistoryTransactionError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryTransactionInitial implements HistoryTransactionState {
  const factory HistoryTransactionInitial() = _$HistoryTransactionInitialImpl;
}

/// @nodoc
abstract class _$$HistoryTransactionLoadingImplCopyWith<$Res> {
  factory _$$HistoryTransactionLoadingImplCopyWith(
          _$HistoryTransactionLoadingImpl value,
          $Res Function(_$HistoryTransactionLoadingImpl) then) =
      __$$HistoryTransactionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryTransactionLoadingImplCopyWithImpl<$Res>
    extends _$HistoryTransactionStateCopyWithImpl<$Res,
        _$HistoryTransactionLoadingImpl>
    implements _$$HistoryTransactionLoadingImplCopyWith<$Res> {
  __$$HistoryTransactionLoadingImplCopyWithImpl(
      _$HistoryTransactionLoadingImpl _value,
      $Res Function(_$HistoryTransactionLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HistoryTransactionLoadingImpl
    with DiagnosticableTreeMixin
    implements HistoryTransactionLoading {
  const _$HistoryTransactionLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransactionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)
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
    TResult? Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    required TResult Function(HistoryTransactionInitial value) initial,
    required TResult Function(HistoryTransactionLoading value) loading,
    required TResult Function(HistoryTransactionLoaded value) loaded,
    required TResult Function(HistoryTransactionError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryTransactionInitial value)? initial,
    TResult? Function(HistoryTransactionLoading value)? loading,
    TResult? Function(HistoryTransactionLoaded value)? loaded,
    TResult? Function(HistoryTransactionError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryTransactionInitial value)? initial,
    TResult Function(HistoryTransactionLoading value)? loading,
    TResult Function(HistoryTransactionLoaded value)? loaded,
    TResult Function(HistoryTransactionError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoryTransactionLoading implements HistoryTransactionState {
  const factory HistoryTransactionLoading() = _$HistoryTransactionLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryTransactionLoadedImplCopyWith<$Res> {
  factory _$$HistoryTransactionLoadedImplCopyWith(
          _$HistoryTransactionLoadedImpl value,
          $Res Function(_$HistoryTransactionLoadedImpl) then) =
      __$$HistoryTransactionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> transactions,
      TransactionInfo? transactionDetails,
      int? selectedTransactionIndex,
      String? amountSent,
      String? amountReceived});

  $TransactionInfoCopyWith<$Res>? get transactionDetails;
}

/// @nodoc
class __$$HistoryTransactionLoadedImplCopyWithImpl<$Res>
    extends _$HistoryTransactionStateCopyWithImpl<$Res,
        _$HistoryTransactionLoadedImpl>
    implements _$$HistoryTransactionLoadedImplCopyWith<$Res> {
  __$$HistoryTransactionLoadedImplCopyWithImpl(
      _$HistoryTransactionLoadedImpl _value,
      $Res Function(_$HistoryTransactionLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? transactionDetails = freezed,
    Object? selectedTransactionIndex = freezed,
    Object? amountSent = freezed,
    Object? amountReceived = freezed,
  }) {
    return _then(_$HistoryTransactionLoadedImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as TransactionInfo?,
      selectedTransactionIndex: freezed == selectedTransactionIndex
          ? _value.selectedTransactionIndex
          : selectedTransactionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      amountSent: freezed == amountSent
          ? _value.amountSent
          : amountSent // ignore: cast_nullable_to_non_nullable
              as String?,
      amountReceived: freezed == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionInfoCopyWith<$Res>? get transactionDetails {
    if (_value.transactionDetails == null) {
      return null;
    }

    return $TransactionInfoCopyWith<$Res>(_value.transactionDetails!, (value) {
      return _then(_value.copyWith(transactionDetails: value));
    });
  }
}

/// @nodoc

class _$HistoryTransactionLoadedImpl
    with DiagnosticableTreeMixin
    implements HistoryTransactionLoaded {
  const _$HistoryTransactionLoadedImpl(
      {required final List<Map<String, dynamic>> transactions,
      required this.transactionDetails,
      this.selectedTransactionIndex,
      this.amountSent,
      this.amountReceived})
      : _transactions = transactions;

  final List<Map<String, dynamic>> _transactions;
  @override
  List<Map<String, dynamic>> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final TransactionInfo? transactionDetails;
  @override
  final int? selectedTransactionIndex;
  @override
  final String? amountSent;
  @override
  final String? amountReceived;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionState.loaded(transactions: $transactions, transactionDetails: $transactionDetails, selectedTransactionIndex: $selectedTransactionIndex, amountSent: $amountSent, amountReceived: $amountReceived)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionState.loaded'))
      ..add(DiagnosticsProperty('transactions', transactions))
      ..add(DiagnosticsProperty('transactionDetails', transactionDetails))
      ..add(DiagnosticsProperty(
          'selectedTransactionIndex', selectedTransactionIndex))
      ..add(DiagnosticsProperty('amountSent', amountSent))
      ..add(DiagnosticsProperty('amountReceived', amountReceived));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransactionLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.transactionDetails, transactionDetails) ||
                other.transactionDetails == transactionDetails) &&
            (identical(
                    other.selectedTransactionIndex, selectedTransactionIndex) ||
                other.selectedTransactionIndex == selectedTransactionIndex) &&
            (identical(other.amountSent, amountSent) ||
                other.amountSent == amountSent) &&
            (identical(other.amountReceived, amountReceived) ||
                other.amountReceived == amountReceived));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      transactionDetails,
      selectedTransactionIndex,
      amountSent,
      amountReceived);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransactionLoadedImplCopyWith<_$HistoryTransactionLoadedImpl>
      get copyWith => __$$HistoryTransactionLoadedImplCopyWithImpl<
          _$HistoryTransactionLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(transactions, transactionDetails, selectedTransactionIndex,
        amountSent, amountReceived);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(transactions, transactionDetails,
        selectedTransactionIndex, amountSent, amountReceived);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactions, transactionDetails, selectedTransactionIndex,
          amountSent, amountReceived);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryTransactionInitial value) initial,
    required TResult Function(HistoryTransactionLoading value) loading,
    required TResult Function(HistoryTransactionLoaded value) loaded,
    required TResult Function(HistoryTransactionError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryTransactionInitial value)? initial,
    TResult? Function(HistoryTransactionLoading value)? loading,
    TResult? Function(HistoryTransactionLoaded value)? loaded,
    TResult? Function(HistoryTransactionError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryTransactionInitial value)? initial,
    TResult Function(HistoryTransactionLoading value)? loading,
    TResult Function(HistoryTransactionLoaded value)? loaded,
    TResult Function(HistoryTransactionError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HistoryTransactionLoaded implements HistoryTransactionState {
  const factory HistoryTransactionLoaded(
      {required final List<Map<String, dynamic>> transactions,
      required final TransactionInfo? transactionDetails,
      final int? selectedTransactionIndex,
      final String? amountSent,
      final String? amountReceived}) = _$HistoryTransactionLoadedImpl;

  List<Map<String, dynamic>> get transactions;
  TransactionInfo? get transactionDetails;
  int? get selectedTransactionIndex;
  String? get amountSent;
  String? get amountReceived;

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryTransactionLoadedImplCopyWith<_$HistoryTransactionLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryTransactionErrorImplCopyWith<$Res> {
  factory _$$HistoryTransactionErrorImplCopyWith(
          _$HistoryTransactionErrorImpl value,
          $Res Function(_$HistoryTransactionErrorImpl) then) =
      __$$HistoryTransactionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HistoryTransactionErrorImplCopyWithImpl<$Res>
    extends _$HistoryTransactionStateCopyWithImpl<$Res,
        _$HistoryTransactionErrorImpl>
    implements _$$HistoryTransactionErrorImplCopyWith<$Res> {
  __$$HistoryTransactionErrorImplCopyWithImpl(
      _$HistoryTransactionErrorImpl _value,
      $Res Function(_$HistoryTransactionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HistoryTransactionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryTransactionErrorImpl
    with DiagnosticableTreeMixin
    implements HistoryTransactionError {
  const _$HistoryTransactionErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransactionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransactionErrorImplCopyWith<_$HistoryTransactionErrorImpl>
      get copyWith => __$$HistoryTransactionErrorImplCopyWithImpl<
          _$HistoryTransactionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)
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
    TResult? Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    TResult Function(
            List<Map<String, dynamic>> transactions,
            TransactionInfo? transactionDetails,
            int? selectedTransactionIndex,
            String? amountSent,
            String? amountReceived)?
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
    required TResult Function(HistoryTransactionInitial value) initial,
    required TResult Function(HistoryTransactionLoading value) loading,
    required TResult Function(HistoryTransactionLoaded value) loaded,
    required TResult Function(HistoryTransactionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryTransactionInitial value)? initial,
    TResult? Function(HistoryTransactionLoading value)? loading,
    TResult? Function(HistoryTransactionLoaded value)? loaded,
    TResult? Function(HistoryTransactionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryTransactionInitial value)? initial,
    TResult Function(HistoryTransactionLoading value)? loading,
    TResult Function(HistoryTransactionLoaded value)? loaded,
    TResult Function(HistoryTransactionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HistoryTransactionError implements HistoryTransactionState {
  const factory HistoryTransactionError(final String message) =
      _$HistoryTransactionErrorImpl;

  String get message;

  /// Create a copy of HistoryTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryTransactionErrorImplCopyWith<_$HistoryTransactionErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryTransactionEventCopyWith<$Res> {
  factory $HistoryTransactionEventCopyWith(HistoryTransactionEvent value,
          $Res Function(HistoryTransactionEvent) then) =
      _$HistoryTransactionEventCopyWithImpl<$Res, HistoryTransactionEvent>;
}

/// @nodoc
class _$HistoryTransactionEventCopyWithImpl<$Res,
        $Val extends HistoryTransactionEvent>
    implements $HistoryTransactionEventCopyWith<$Res> {
  _$HistoryTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTransactionHistoryImplCopyWith<$Res> {
  factory _$$LoadTransactionHistoryImplCopyWith(
          _$LoadTransactionHistoryImpl value,
          $Res Function(_$LoadTransactionHistoryImpl) then) =
      __$$LoadTransactionHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletAddress});
}

/// @nodoc
class __$$LoadTransactionHistoryImplCopyWithImpl<$Res>
    extends _$HistoryTransactionEventCopyWithImpl<$Res,
        _$LoadTransactionHistoryImpl>
    implements _$$LoadTransactionHistoryImplCopyWith<$Res> {
  __$$LoadTransactionHistoryImplCopyWithImpl(
      _$LoadTransactionHistoryImpl _value,
      $Res Function(_$LoadTransactionHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
  }) {
    return _then(_$LoadTransactionHistoryImpl(
      null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTransactionHistoryImpl
    with DiagnosticableTreeMixin
    implements LoadTransactionHistory {
  const _$LoadTransactionHistoryImpl(this.walletAddress);

  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionEvent.load(walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionEvent.load'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionHistoryImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletAddress);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionHistoryImplCopyWith<_$LoadTransactionHistoryImpl>
      get copyWith => __$$LoadTransactionHistoryImplCopyWithImpl<
          _$LoadTransactionHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) {
    return load(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) {
    return load?.call(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionHistory implements HistoryTransactionEvent {
  const factory LoadTransactionHistory(final String walletAddress) =
      _$LoadTransactionHistoryImpl;

  String get walletAddress;

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransactionHistoryImplCopyWith<_$LoadTransactionHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshTransactionHistoryImplCopyWith<$Res> {
  factory _$$RefreshTransactionHistoryImplCopyWith(
          _$RefreshTransactionHistoryImpl value,
          $Res Function(_$RefreshTransactionHistoryImpl) then) =
      __$$RefreshTransactionHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletAddress});
}

/// @nodoc
class __$$RefreshTransactionHistoryImplCopyWithImpl<$Res>
    extends _$HistoryTransactionEventCopyWithImpl<$Res,
        _$RefreshTransactionHistoryImpl>
    implements _$$RefreshTransactionHistoryImplCopyWith<$Res> {
  __$$RefreshTransactionHistoryImplCopyWithImpl(
      _$RefreshTransactionHistoryImpl _value,
      $Res Function(_$RefreshTransactionHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
  }) {
    return _then(_$RefreshTransactionHistoryImpl(
      null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshTransactionHistoryImpl
    with DiagnosticableTreeMixin
    implements RefreshTransactionHistory {
  const _$RefreshTransactionHistoryImpl(this.walletAddress);

  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionEvent.refresh(walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionEvent.refresh'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTransactionHistoryImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletAddress);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTransactionHistoryImplCopyWith<_$RefreshTransactionHistoryImpl>
      get copyWith => __$$RefreshTransactionHistoryImplCopyWithImpl<
          _$RefreshTransactionHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) {
    return refresh(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) {
    return refresh?.call(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshTransactionHistory implements HistoryTransactionEvent {
  const factory RefreshTransactionHistory(final String walletAddress) =
      _$RefreshTransactionHistoryImpl;

  String get walletAddress;

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTransactionHistoryImplCopyWith<_$RefreshTransactionHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetTransactionHistoryImplCopyWith<$Res> {
  factory _$$ResetTransactionHistoryImplCopyWith(
          _$ResetTransactionHistoryImpl value,
          $Res Function(_$ResetTransactionHistoryImpl) then) =
      __$$ResetTransactionHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetTransactionHistoryImplCopyWithImpl<$Res>
    extends _$HistoryTransactionEventCopyWithImpl<$Res,
        _$ResetTransactionHistoryImpl>
    implements _$$ResetTransactionHistoryImplCopyWith<$Res> {
  __$$ResetTransactionHistoryImplCopyWithImpl(
      _$ResetTransactionHistoryImpl _value,
      $Res Function(_$ResetTransactionHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetTransactionHistoryImpl
    with DiagnosticableTreeMixin
    implements ResetTransactionHistory {
  const _$ResetTransactionHistoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryTransactionEvent.reset'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetTransactionHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetTransactionHistory implements HistoryTransactionEvent {
  const factory ResetTransactionHistory() = _$ResetTransactionHistoryImpl;
}

/// @nodoc
abstract class _$$SelectTransactionImplCopyWith<$Res> {
  factory _$$SelectTransactionImplCopyWith(_$SelectTransactionImpl value,
          $Res Function(_$SelectTransactionImpl) then) =
      __$$SelectTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectTransactionImplCopyWithImpl<$Res>
    extends _$HistoryTransactionEventCopyWithImpl<$Res, _$SelectTransactionImpl>
    implements _$$SelectTransactionImplCopyWith<$Res> {
  __$$SelectTransactionImplCopyWithImpl(_$SelectTransactionImpl _value,
      $Res Function(_$SelectTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectTransactionImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTransactionImpl
    with DiagnosticableTreeMixin
    implements SelectTransaction {
  const _$SelectTransactionImpl(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionEvent.selectTransaction(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HistoryTransactionEvent.selectTransaction'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTransactionImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTransactionImplCopyWith<_$SelectTransactionImpl> get copyWith =>
      __$$SelectTransactionImplCopyWithImpl<_$SelectTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) {
    return selectTransaction(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) {
    return selectTransaction?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (selectTransaction != null) {
      return selectTransaction(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) {
    return selectTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) {
    return selectTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (selectTransaction != null) {
      return selectTransaction(this);
    }
    return orElse();
  }
}

abstract class SelectTransaction implements HistoryTransactionEvent {
  const factory SelectTransaction(final int index) = _$SelectTransactionImpl;

  int get index;

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTransactionImplCopyWith<_$SelectTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransactionDetailsImplCopyWith<$Res> {
  factory _$$LoadTransactionDetailsImplCopyWith(
          _$LoadTransactionDetailsImpl value,
          $Res Function(_$LoadTransactionDetailsImpl) then) =
      __$$LoadTransactionDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String signature});
}

/// @nodoc
class __$$LoadTransactionDetailsImplCopyWithImpl<$Res>
    extends _$HistoryTransactionEventCopyWithImpl<$Res,
        _$LoadTransactionDetailsImpl>
    implements _$$LoadTransactionDetailsImplCopyWith<$Res> {
  __$$LoadTransactionDetailsImplCopyWithImpl(
      _$LoadTransactionDetailsImpl _value,
      $Res Function(_$LoadTransactionDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
  }) {
    return _then(_$LoadTransactionDetailsImpl(
      null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTransactionDetailsImpl
    with DiagnosticableTreeMixin
    implements LoadTransactionDetails {
  const _$LoadTransactionDetailsImpl(this.signature);

  @override
  final String signature;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryTransactionEvent.loadTransactionDetails(signature: $signature)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HistoryTransactionEvent.loadTransactionDetails'))
      ..add(DiagnosticsProperty('signature', signature));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionDetailsImpl &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signature);

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionDetailsImplCopyWith<_$LoadTransactionDetailsImpl>
      get copyWith => __$$LoadTransactionDetailsImplCopyWithImpl<
          _$LoadTransactionDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletAddress) load,
    required TResult Function(String walletAddress) refresh,
    required TResult Function() reset,
    required TResult Function(int index) selectTransaction,
    required TResult Function(String signature) loadTransactionDetails,
  }) {
    return loadTransactionDetails(signature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String walletAddress)? load,
    TResult? Function(String walletAddress)? refresh,
    TResult? Function()? reset,
    TResult? Function(int index)? selectTransaction,
    TResult? Function(String signature)? loadTransactionDetails,
  }) {
    return loadTransactionDetails?.call(signature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletAddress)? load,
    TResult Function(String walletAddress)? refresh,
    TResult Function()? reset,
    TResult Function(int index)? selectTransaction,
    TResult Function(String signature)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (loadTransactionDetails != null) {
      return loadTransactionDetails(signature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionHistory value) load,
    required TResult Function(RefreshTransactionHistory value) refresh,
    required TResult Function(ResetTransactionHistory value) reset,
    required TResult Function(SelectTransaction value) selectTransaction,
    required TResult Function(LoadTransactionDetails value)
        loadTransactionDetails,
  }) {
    return loadTransactionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionHistory value)? load,
    TResult? Function(RefreshTransactionHistory value)? refresh,
    TResult? Function(ResetTransactionHistory value)? reset,
    TResult? Function(SelectTransaction value)? selectTransaction,
    TResult? Function(LoadTransactionDetails value)? loadTransactionDetails,
  }) {
    return loadTransactionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionHistory value)? load,
    TResult Function(RefreshTransactionHistory value)? refresh,
    TResult Function(ResetTransactionHistory value)? reset,
    TResult Function(SelectTransaction value)? selectTransaction,
    TResult Function(LoadTransactionDetails value)? loadTransactionDetails,
    required TResult orElse(),
  }) {
    if (loadTransactionDetails != null) {
      return loadTransactionDetails(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionDetails implements HistoryTransactionEvent {
  const factory LoadTransactionDetails(final String signature) =
      _$LoadTransactionDetailsImpl;

  String get signature;

  /// Create a copy of HistoryTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransactionDetailsImplCopyWith<_$LoadTransactionDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
