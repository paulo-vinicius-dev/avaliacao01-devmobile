import 'package:avaliacao01/screens/detail_coin.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao01/models/coin.dart';

class CoinGridItem extends StatelessWidget {
  const CoinGridItem({super.key, required this.coin});
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailCoinScreen(coin: coin);
            },
          ),
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                coin.color.withOpacity(0.55),
                coin.color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          coin.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
