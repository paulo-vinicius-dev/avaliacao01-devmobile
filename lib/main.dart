// import 'package:myapp/screens/categories.dart';
import 'package:avaliacao01/data/dummy_data.dart';
import 'package:avaliacao01/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao01/screens/coin.dart';

void main() {
  runApp(const MyApp());
}

const corTema = Color.fromARGB(255, 131, 57, 0);
final wallet = availableWallets[0];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.orange[700],
          brightness: Brightness.dark,
          surface: Colors.grey,
          seedColor: corTema,
        ),
      ),
      home: const MyHomePage(title: 'Crypto App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(currentPageIndex == 0 ? widget.title : 'Minha carteira'),
        centerTitle: true,
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
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
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Nome: ${wallet.owner.name}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Text(
                  'Saldo da conta: R\$${wallet.balance.toStringAsFixed(2)}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                 const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Text(
                  'Moedas diferentes na carteira: ${wallet.coins.length}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.paid),
            label: "Moedas",
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet),
            label: "Minha carteira",
          ),
        ],
      ),
      body: [
        const CoinScreen(),
        WalletScreen(wallet: wallet),
      ][currentPageIndex],
    );
  }
}
