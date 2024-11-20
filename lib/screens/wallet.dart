import 'package:flutter/material.dart';
import 'package:avaliacao01/models/wallet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key, required this.wallet});

  final Wallet wallet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Perfil',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 50,
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome: ${wallet.owner.name}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Saldo: R\$ ${wallet.balance.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Criação: ${wallet.owner.createdAt}',
                        style: const TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Moedas adquiridas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(

            ),
          ],
        ),
      ),
    );
  }
}
