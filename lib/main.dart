// import 'package:myapp/screens/categories.dart';
import 'package:avaliacao01/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao01/screens/coin.dart';

void main() {
  runApp(const MyApp());
}

const corTema = Color.fromARGB(255, 131, 57, 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.orange,
          brightness: Brightness.dark,
          seedColor: corTema,
        ),
      ),
      home: const MyHomePage(title: 'Crypto Flutter'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      drawer: Drawer(

      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
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
        const WalletScreen(),
      ][currentPageIndex],

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
