import 'package:flutter/material.dart';
import 'package:avaliacao01/models/coin.dart';
import 'package:avaliacao01/models/user.dart';
import 'package:avaliacao01/models/wallet.dart';

const availableCoins = [
  Coin(
    id: 'c1',
    title: 'Bitcoin',
    color: Colors.orange,
    price: 37125.50,
  ),
  Coin(
    id: 'c2',
    title: 'Ethereum',
    color: Colors.blue,
    price: 2035.75,
  ),
  Coin(
    id: 'c3',
    title: 'Binance Coin',
    color: Colors.yellow,
    price: 315.20,
  ),
  Coin(
    id: 'c4',
    title: 'Cardano',
    color: Colors.green,
    price: 0.45,
  ),
  Coin(
    id: 'c5',
    title: 'Solana',
    color: Colors.purple,
    price: 21.85,
  ),
  Coin(
    id: 'c6',
    title: 'Ripple (XRP)',
    color: Colors.lightBlue,
    price: 0.65,
  ),
  Coin(
    id: 'c7',
    title: 'Dogecoin',
    color: Colors.pink,
    price: 0.07,
  ),
  Coin(
    id: 'c8',
    title: 'Polkadot',
    color: Colors.red,
    price: 4.25,
  ),
  Coin(
    id: 'c9',
    title: 'Litecoin',
    color: Colors.grey,
    price: 82.45,
  ),
  Coin(
    id: 'c10',
    title: 'Shiba Inu',
    color: Colors.brown,
    price: 0.00000875,
  ),
];

const availableUsers = [
  User(
    id: 'u1',
    name: 'João',
    createdAt: '01/01/2024',
  ),
];

final availableWallets = [
  Wallet(
    id: 'w1',
    balance: 10000.00,
    owner: availableUsers[0],  
    coins: [availableCoins[0], availableCoins[1]], 
  )
];