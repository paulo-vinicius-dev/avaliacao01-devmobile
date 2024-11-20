import 'package:avaliacao01/models/user.dart';
import 'package:avaliacao01/models/coin.dart';


class Wallet {
  const Wallet({
    required this.id,
    required this.balance,
    required this.owner,
    required this.coins,
  });

  final String id;
  final double balance;
  final User owner;
  final List<Coin> coins;
}
