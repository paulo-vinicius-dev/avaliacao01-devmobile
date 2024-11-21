import 'package:flutter/material.dart';
import 'package:avaliacao01/models/coin.dart';

class DetailCoinScreen extends StatelessWidget {
  const DetailCoinScreen({super.key, required this.coin});

  final Coin coin;

  @override
  Widget build(BuildContext context) {
    bool isIncrease = coin.previewPrice < coin.price;
    return Scaffold(
      appBar: AppBar(
        title: Text(coin.title),
        backgroundColor: coin.color,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                coin.image,
                width: 150,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                coin.description,
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Preço Anterior: R\$${coin.previewPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                color: isIncrease ? Colors.green : Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Preço Atual: R\$${coin.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                          isIncrease
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                          color: Colors.black)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
