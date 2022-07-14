import 'package:flutter/material.dart';
import 'package:suitable/widgets/scaffold_app.dart';
import 'cardapio.dart';
import 'conta.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      title: 'Carrinho',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.remove_shopping_cart,
              size: 50,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Ainda não foram escolhidos produtos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                'VOLTAR AO CARDÁPIO',
                style: TextStyle(
                  color: Color.fromARGB(255, 47, 47, 47),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
