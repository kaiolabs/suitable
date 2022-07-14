import 'package:flutter/material.dart';
import 'package:suitable/modules/carrinho_module.dart';
import 'package:suitable/pages/cardapio.dart';

import 'modules/conta_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Cardapio(),
        '/carrinho': (context) => const CarrinhoModule(),
        '/conta': (context) => const ContaModule(),
      },
    );
  }
}
