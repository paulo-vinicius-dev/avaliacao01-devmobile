import 'package:avaliacao01/widgets/coin_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao01/data/dummy_data.dart';

class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(16),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final coin in availableCategories)
            CoinGridItem(coin: coin)
        ],
      ),
    ));
  }
}
