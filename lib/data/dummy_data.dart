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
    previewPrice: 37450.00,
    description: 'A primeira criptomoeda, focada em descentralização e escassez com um limite de 21 milhões de moedas.',
    image: 'lib/assets/bitcoin.png',
  ),
  Coin(
    id: 'c2',
    title: 'Ethereum',
    color: Colors.blue,
    price: 2035.75,
    previewPrice: 1990.50,
    description: 'Plataforma líder para contratos inteligentes e DApps, conhecida por seu ecossistema robusto.',
    image: 'lib/assets/ethereum.png',
  ),
  Coin(
    id: 'c3',
    title: 'Binance Coin',
    color: Colors.yellow,
    price: 315.20,
    previewPrice: 318.75,
    description: 'Token nativo da Binance, usado para taxas reduzidas e suporte a projetos na Binance Smart Chain.',
    image: 'lib/assets/binance.png',
  ),
  Coin(
    id: 'c4',
    title: 'Cardano',
    color: Colors.green,
    price: 0.45,
    previewPrice: 0.40,
    description: 'Blockchain baseada em pesquisa acadêmica, focada em segurança, escalabilidade e sustentabilidade.',
    image: 'lib/assets/cardano.png',
  ),
  Coin(
    id: 'c5',
    title: 'Solana',
    color: Colors.purple,
    price: 21.85,
    previewPrice: 22.50,
    description: 'Blockchain de alta velocidade e baixo custo, ideal para DApps e finanças descentralizadas.',
    image: 'lib/assets/solana.png',
  ),
  Coin(
    id: 'c6',
    title: 'Ripple (XRP)',
    color: Colors.lightBlue,
    price: 0.65,
    previewPrice: 0.70,
    description: 'Focada em transações rápidas e baratas para remessas internacionais e integração bancária.',
    image: 'lib/assets/xrp.png',
  ),
  Coin(
    id: 'c7',
    title: 'Dogecoin',
    color: Colors.pink,
    price: 0.07,
    previewPrice: 0.08,
    description: 'Criada como um meme, popular por sua comunidade e uso em transações rápidas e baratas.',
    image: 'lib/assets/dogecoin.png',
  ),
  Coin(
    id: 'c8',
    title: 'Polkadot',
    color: Colors.red,
    price: 4.25,
    previewPrice: 4.10,
    description: 'Rede que conecta diferentes blockchains, promovendo interoperabilidade e escalabilidade.',
    image: 'lib/assets/polkadot.png',
  ),
  Coin(
    id: 'c9',
    title: 'Litecoin',
    color: Colors.grey,
    price: 82.45,
    previewPrice: 84.00,
    description: 'Uma alternativa eficiente ao Bitcoin, com transações rápidas e econômicas.',
    image: 'lib/assets/litecoin.png',
  ),
  Coin(
    id: 'c10',
    title: 'Shiba Inu',
    color: Colors.brown,
    price: 0.00000875,
    previewPrice: 0.00000850,
    description: 'Criptomoeda meme baseada no Ethereum, conhecida por sua comunidade e alto crescimento.',
    image: 'lib/assets/shiba.png',
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
    coins: [availableCoins[0], availableCoins[1],availableCoins[2], availableCoins[3], availableCoins[4], availableCoins[5]], 
  )
];