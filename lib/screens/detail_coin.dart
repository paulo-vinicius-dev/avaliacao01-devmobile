import 'package:flutter/material.dart';
import 'package:avaliacao01/models/coin.dart';

class DetailCoinScreen extends StatelessWidget {
  const DetailCoinScreen({super.key, required this.coin});

  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coin.title),
        backgroundColor: coin.color,
      ),
    );
  }
}
