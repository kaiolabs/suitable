import 'package:flutter/material.dart';
import 'package:suitable/pages/carrinho.dart' deferred as carrinho_page;

import 'load_module.dart';

class CarrinhoModule extends StatelessWidget {
  const CarrinhoModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadModule(
      library: carrinho_page.loadLibrary(),
      module: () => carrinho_page.Carrinho(),
    );
  }
}
