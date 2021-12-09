import 'package:equatable/equatable.dart';
import '../../models/wallet.dart';

abstract class WalletState extends Equatable {
  const WalletState();

  @override
  List<Object> get props => [];
}

class WalletLoadSuccess extends WalletState {
  final List<Wallet> wallets;

  const WalletLoadSuccess([this.wallets = const []]);

  @override
  List<Object> get props => [wallets];
}
