import 'package:equatable/equatable.dart';

class Wallet extends Equatable {
  final String id;
  final String name;

  Wallet(this.id, this.name);

  @override
  List<Object> get props => [id, name];
}
