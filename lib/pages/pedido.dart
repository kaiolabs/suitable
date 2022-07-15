import 'package:flutter/material.dart';

class Pedido extends StatefulWidget {
  final String titulo;
  final String subtitulo;
  final String descricao;
  final image;
  const Pedido(
      {Key? key,
      required this.titulo,
      required this.subtitulo,
      required this.descricao,
      this.image})
      : super(key: key);

  @override
  State<Pedido> createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'CANCELAR',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 120,
                child: Row(
                  children: [
                    const Text(
                      'INSERIR',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
