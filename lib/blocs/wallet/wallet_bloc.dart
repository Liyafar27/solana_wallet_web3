import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/phantom_repository.dart';

part 'wallet_bloc.freezed.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.connectWallet({String? mnemonic}) = ConnectWallet;
  const factory WalletEvent.disconnectWallet() = DisconnectWallet;
  const factory WalletEvent.generateNewWallet() = GenerateNewWallet;
  const factory WalletEvent.restoreWallet(String mnemonic) = RestoreWallet;
  const factory WalletEvent.updateWalletBalance(double balance) = UpdateWalletBalance;
  const factory WalletEvent.changeNetwork(String network) = ChangeNetwork;
  const factory WalletEvent.refreshBalance() = RefreshBalance;
  const factory WalletEvent.checkNetworkLoad() = CheckNetworkLoad;
  const factory WalletEvent.swapSolToUsdt(double amount) = SwapSolToUsdt;
  const factory WalletEvent.swapUsdtToSol(double amount) = SwapUsdtToSol;


}
@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = WalletInitial;
  const factory WalletState.loading() = WalletLoading;
  const factory WalletState.connected({
    String? mnemonic,
    required WalletInfo wallet,
  }) = WalletConnected;
  const factory WalletState.disconnected() = WalletDisconnected;
  const factory WalletState.error(String message) = WalletError;
  const factory WalletState.networkLoadChecked(int load) = NetworkLoadChecked;
}
@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    required String address,
    required double solBalance,
    required double usdcBalance,
    required bool isConnected,
    required String network,
    required bool isBalanceLoading,
  }) = _WalletInfo;
}

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final PhantomRepository _phantomService;

  WalletBloc({required PhantomRepository phantomService})
      : _phantomService = phantomService,
        super(const WalletState.initial()) {
    on<ConnectWallet>(_onConnectWallet);
    on<DisconnectWallet>(_onDisconnectWallet);
    on<GenerateNewWallet>(_onGenerateNewWallet);
    on<RestoreWallet>(_onRestoreWallet);
    on<UpdateWalletBalance>(_onUpdateWalletBalance);
    on<ChangeNetwork>(_onChangeNetwork);
    on<RefreshBalance>(_onRefreshBalance);
    on<CheckNetworkLoad>(_onCheckNetworkLoad);
    on<SwapSolToUsdt>(_onSwapSolToUsdt);
    on<SwapUsdtToSol>(_onSwapUsdtToSol);


  }

  Future<void> _onConnectWallet(
      ConnectWallet event, Emitter<WalletState> emit) async {
    try {
      emit(const WalletState.loading());
      final walletAddress = await _phantomService.connectWallet();
      if (walletAddress == null) {
        emit(const WalletState.error("Ошибка подключения к Phantom Wallet"));
        return;
      }

      WalletInfo wallet = WalletInfo(
        address: walletAddress,
        solBalance: 0.0,
        usdcBalance: 0.0,
        isConnected: true,
        network: "mainnet",
        isBalanceLoading: true,
      );
      emit(WalletState.connected(mnemonic:event.mnemonic,wallet: wallet));

      final solBalance = await _phantomService.getSolBalance(walletAddress);
      final usdcBalance = await _phantomService.getTokenBalance(walletAddress, "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v");
      wallet = wallet.copyWith(solBalance: solBalance, usdcBalance: usdcBalance, isBalanceLoading: false);
      emit(WalletState.connected(wallet:wallet));
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onDisconnectWallet(
      DisconnectWallet event, Emitter<WalletState> emit) async {
    try {
      emit(const WalletState.loading());
      await _phantomService.disconnectWallet();
      emit(const WalletState.disconnected());
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onGenerateNewWallet(
      GenerateNewWallet event, Emitter<WalletState> emit) async {
    try {
      emit(const WalletState.loading());
      await _phantomService.generateNewWallet();
      var mnemonic =  _phantomService.getMnemonic();
      add( ConnectWallet(mnemonic:mnemonic));
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onRestoreWallet(
      RestoreWallet event, Emitter<WalletState> emit) async {
    try {
      emit(const WalletState.loading());
      await _phantomService.restoreWallet(event.mnemonic);
      add( const ConnectWallet(mnemonic: null));
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }
  Future<void> _onSwapUsdtToSol(
      SwapUsdtToSol event, Emitter<WalletState> emit) async {
    if (state is! WalletConnected) {
      emit(const WalletState.error("Кошелек не подключен"));
      return;
    }

    final currentWallet = (state as WalletConnected).wallet;
    emit(const WalletState.loading());

    // Пытаемся выполнить свап, не обращая внимания на результат.
    _phantomService.swapUsdcToSolWithInstructions(event.amount);

    // Задержка для обеспечения завершения процесса
    await Future.delayed(const Duration(seconds: 2));

    // Обновляем баланс
    add(const RefreshBalance());

    // Сигнализируем, что кошелек снова подключен
    emit(WalletState.connected(wallet:currentWallet));
  }


  Future<void> _onSwapSolToUsdt(
        SwapSolToUsdt event, Emitter<WalletState> emit) async {
      if (state is! WalletConnected) {
        emit(const WalletState.error("Кошелек не подключен"));
        return;
      }

      final currentWallet = (state as WalletConnected).wallet;
      emit(const WalletState.loading());

      // Пытаемся выполнить свап, не обращая внимания на результат.
      _phantomService.swapSolToUsdcWithInstructions(event.amount);

      // Задержка для обеспечения завершения процесса
      await Future.delayed(const Duration(seconds: 2));

      // Обновляем баланс
      add(const RefreshBalance());

      // Сигнализируем, что кошелек снова подключен
      emit(WalletState.connected(wallet:currentWallet));
    }



  Future<void> _onRefreshBalance(
      RefreshBalance event, Emitter<WalletState> emit) async {
    if (state is WalletConnected) {
      final currentWallet = (state as WalletConnected).wallet;
      try {
        final solBalance = await _phantomService.getSolBalance(currentWallet.address);
        final usdcBalance = await _phantomService.getTokenBalance(
            currentWallet.address, "EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v");
        final updatedWallet = currentWallet.copyWith(solBalance: solBalance, usdcBalance: usdcBalance);
        emit(WalletState.connected(wallet:updatedWallet));
      } catch (e) {
        emit(WalletState.error("Ошибка обновления баланса: $e"));
      }
    }
  }

  void _onUpdateWalletBalance(
      UpdateWalletBalance event, Emitter<WalletState> emit) {
    if (state is WalletConnected) {
      final currentWallet = (state as WalletConnected).wallet;
      emit(WalletState.connected(wallet:currentWallet.copyWith(solBalance: 0)));
      Future.delayed(const Duration(seconds: 3), () {
        emit(WalletState.connected(wallet:currentWallet.copyWith(solBalance: event.balance)));
      });
    }
  }

  void _onChangeNetwork(ChangeNetwork event, Emitter<WalletState> emit) {
    if (state is WalletConnected) {
      final currentWallet = (state as WalletConnected).wallet;
      emit(WalletState.connected(wallet:currentWallet.copyWith(network: event.network)));
    }
  }

  Future<void> _onCheckNetworkLoad(
      CheckNetworkLoad event, Emitter<WalletState> emit) async {
    try {
      emit(const WalletState.loading());
      final networkLoad = await _phantomService.getNetworkLoad();
      emit(WalletState.networkLoadChecked(networkLoad ?? 0));
    } catch (e) {
      emit(WalletState.error("Ошибка при проверке загруженности сети: $e"));
    }
  }
}

