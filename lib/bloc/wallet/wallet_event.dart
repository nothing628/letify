import 'package:equatable/equatable.dart';
import '../../models/wallet.dart';

abstract class WalletEvent extends Equatable {
  const WalletEvent();

  @override
  List<Object> get props => [];
}

class WalletAdded extends WalletEvent {
  final Wallet wallet;

  const WalletAdded(this.wallet);

  @override
  List<Object> get props => [wallet];
}

class WalletUpdated extends WalletEvent {
  final Wallet wallet;

  const WalletUpdated(this.wallet);

  @override
  List<Object> get props => [wallet];
}

class WalletDeleted extends WalletEvent {
  final Wallet wallet;

  const WalletDeleted(this.wallet);

  @override
  List<Object> get props => [wallet];
}
