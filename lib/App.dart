// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:suitable/controllers/app_controller.dart';
import 'package:suitable/pages/cardapio.dart';

import 'modules/carrinho_module.dart';
import 'modules/conta_module.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const Cardapio(),
              '/carrinho': (context) => const CarrinhoModule(),
              '/conta': (context) => const ContaModule(),
            },
          );
        });
  }
}
