import 'package:bloc/bloc.dart';
import '../../models/wallet.dart';
import './wallet_event.dart';
import './wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletLoadSuccess()) {
    on<WalletAdded>(_onWalletAdded);
    on<WalletUpdated>(_onWalletUpdated);
    on<WalletDeleted>(_onWalletDeleted);
  }

  Future<void> _onWalletAdded(
      WalletAdded event, Emitter<WalletState> emit) async {
    final List<Wallet> updatedWallets =
        List.from((state as WalletLoadSuccess).wallets)..add(event.wallet);

    emit(WalletLoadSuccess(updatedWallets));
  }

  Future<void> _onWalletUpdated(
      WalletUpdated event, Emitter<WalletState> emit) async {
    final List<Wallet> updatedWallets =
        List.from((state as WalletLoadSuccess).wallets);

    final walletIndex =
        updatedWallets.indexWhere((element) => element.id == event.wallet.id);

    if (walletIndex > -1) updatedWallets[walletIndex] = event.wallet;

    emit(WalletLoadSuccess(updatedWallets));
  }

  Future<void> _onWalletDeleted(
      WalletDeleted event, Emitter<WalletState> emit) async {
    final List<Wallet> updatedWallets =
        List.from((state as WalletLoadSuccess).wallets)
          ..removeWhere((element) => element.id == event.wallet.id);

    emit(WalletLoadSuccess(updatedWallets));
  }
}
