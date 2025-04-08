import 'package:bloc/bloc.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/swap_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_bloc.freezed.dart';

@freezed
class SwapEvent with _$SwapEvent {
  const factory SwapEvent.checkSwapFee(double amountSol) = CheckSwapFee;

  const factory SwapEvent.executeSwap(double amountSol) = ExecuteSwap;

  const factory SwapEvent.fetchSolPrice() = FetchSolPrice;
}

@freezed
class SwapState with _$SwapState {
  const factory SwapState.swapInitial() = SwapInitial;

  const factory SwapState.swapFeeLoaded(double estimatedFee) = SwapFeeLoaded;

  const factory SwapState.swapLoading() = SwapLoading;

  const factory SwapState.swapSuccess(String txSignature) = SwapSuccess;

  const factory SwapState.swapError(String message) = SwapError;

  const factory SwapState.solPriceLoaded(double solPrice) = SolPriceLoaded;


}

class SwapBloc extends Bloc<SwapEvent, SwapState> {
  final SwapRepository swapRepository;
  double solPrice = 0.0;

  SwapBloc({required this.swapRepository}) : super(const SwapState.swapInitial()) {
    on<FetchSolPrice>(_onFetchSolPrice);
    on<CheckSwapFee>(_onCheckSwapFee);
    on<ExecuteSwap>(_onExecuteSwap);
    // on<SwapSolToUsdt>(_onSwapSolToUsdt);

  }
  // Future<void> _onSwapSolToUsdt(
  //     SwapSolToUsdt event, Emitter<WalletState> emit) async {
  //   if (state is! WalletConnected) {
  //     emit(const WalletState.error("Кошелек не подключен"));
  //     return;
  //   }

  //   final currentWallet = (state as WalletConnected).wallet;
  //   emit(const WalletState.loading());
  //
  //   // Пытаемся выполнить свап, не обращая внимания на результат.
  //   _phantomService.swapSolToUsdcWithInstructions(event.amount);
  //
  //   // Задержка для обеспечения завершения процесса
  //   await Future.delayed(const Duration(seconds: 2));
  //
  //   // Обновляем баланс
  //   add(const RefreshBalance());
  //
  //   // Сигнализируем, что кошелек снова подключен
  //   emit(WalletState.connected(currentWallet));
  // }


  Future<void> _onFetchSolPrice(
      FetchSolPrice event, Emitter<SwapState> emit) async {
    try {
      emit(const SwapState.swapLoading());
      solPrice = await swapRepository.fetchSolPrice();
      emit(SwapState.solPriceLoaded(solPrice));
    } catch (e) {
      emit(SwapState.swapError("Ошибка загрузки цены SOL: $e"));
    }
  }

  //   Future<void> _onFetchSolPrice(
//       FetchSolPrice event, Emitter<SwapState> emit) async {
//     try {
//       emit(SwapLoading());
//       // final response = await Dio().get(
//       //   'https://api.binance.com/api/v3/ticker/price?symbol=SOLUSDT',
//       // );
//       // solPrice = double.parse(response.data['price']);
//       // emit(SolPriceLoaded(solPrice));
//     } catch (e) {
//       emit(SwapError("Ошибка загрузки цены SOL: $e"));
//     }
//   }
  Future<void> _onCheckSwapFee(
      CheckSwapFee event, Emitter<SwapState> emit) async {
    try {
      // Здесь нужно рассчитать комиссию и отправить новое состояние
    } catch (e) {
      emit(SwapState.swapError("Ошибка расчета комиссии: $e"));
    }
  }

  Future<void> _onExecuteSwap(
      ExecuteSwap event, Emitter<SwapState> emit) async {
    try {
      emit(const SwapState.swapLoading());
      // Здесь нужно выполнить обмен SOL → USDC
    } catch (e) {
      emit(SwapState.swapError("Ошибка обмена: $e"));
    }
  }
}

double calculateEstimatedFee(double amountSol, int? networkLoad) {
  double baseFee = 0.000005;
  double priorityFee = (networkLoad ?? 20000) / 1e9;
  double computeUnitsFee = 0.0002;
  double jupiterSwapFee = 0.008;
  double additionalFee = 0.002;

  double totalFee =
      baseFee + priorityFee + computeUnitsFee + jupiterSwapFee + additionalFee;

  return totalFee < 0.0001 ? 0.0001 : totalFee;
}

// class SwapBloc extends Bloc<SwapEvent, SwapState> {
//   final SwapService _swapService;
//   double solPrice = 0.0; // Храним цену SOL
//
//   SwapBloc(this._swapService) : super(SwapInitial()) {
//     on<CheckSwapFee>(_onCheckSwapFee);
//     on<ExecuteSwap>(_onExecuteSwap);
//
//   }
//   Future<void> _onFetchSolPrice(
//       FetchSolPrice event, Emitter<SwapState> emit) async {
//     try {
//       emit(SwapLoading());
//       // final response = await Dio().get(
//       //   'https://api.binance.com/api/v3/ticker/price?symbol=SOLUSDT',
//       // );
//       // solPrice = double.parse(response.data['price']);
//       // emit(SolPriceLoaded(solPrice));
//     } catch (e) {
//       emit(SwapError("Ошибка загрузки цены SOL: $e"));
//     }
//   }
//   Future<void> _onCheckSwapFee(
//       CheckSwapFee event, Emitter<SwapState> emit) async {
//     try {
//       // final networkLoad = await _swapService.getNetworkLoad();
//       // final estimatedFee = calculateEstimatedFee(event.amountSol, networkLoad);
//       // emit(SwapFeeLoaded(estimatedFee));
//     } catch (e) {
//       emit(SwapError("Ошибка расчета комиссии: $e"));
//     }
//   } Future<void> _onExecuteSwap(
//       ExecuteSwap event, Emitter<SwapState> emit) async {
//     try {
//       emit(SwapLoading());
//       // final txSignature = await _swapService.swapSolToUsdcWithInstructions(event.amountSol);
//       // emit(SwapSuccess(txSignature));
//     } catch (e) {
//       emit(SwapError("Ошибка обмена: $e"));
//     }
//   }
//
// }
// double calculateEstimatedFee(double amountSol, int? networkLoad) {
//   double baseFee = 0.000005; // Фиксированная комиссия Solana
//   double priorityFee = (networkLoad ?? 20000) / 1e9; // Приоритетная комиссия
//   double computeUnitsFee = 0.0002; // Фиксированная комиссия за вычисления
//   double jupiterSwapFee = 0.008; // Комиссия Jupiter
//   double additionalFee = 0.002; // Возможная комиссия за создание аккаунта
//
//   double totalFee = baseFee + priorityFee + computeUnitsFee + jupiterSwapFee + additionalFee;
//
//   return totalFee < 0.0001 ? 0.0001 : totalFee;
// }
class Transaction {
  final String signature;
  final int slot;
  final int blockTime;

  Transaction({
    required this.signature,
    required this.slot,
    required this.blockTime,
  });

  // Фабричный метод для создания экземпляра Transaction из Map
  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      signature: map['signature'],
      slot: map['slot'],
      blockTime: map['blockTime'],
    );
  }
}