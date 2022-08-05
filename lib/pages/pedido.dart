// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../controllers/app_controller.dart';

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
      required this.image})
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
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: ((AppController.instance.isDartTheme == true)
                          ? Colors.white
                          : const Color.fromARGB(255, 66, 66, 66)),
                    ),
                  ),
                  const Text(
                    'CANCELAR',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Card(
                color: ((AppController.instance.isDartTheme == false)
                    ? const Color.fromARGB(204, 255, 255, 255)
                    : const Color.fromARGB(255, 66, 66, 66)),
                elevation: 5,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      ((AppController.instance.isDartTheme == false)
                          ? const Color.fromARGB(204, 255, 255, 255)
                          : const Color.fromARGB(255, 66, 66, 66)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Text(
                        'INSERIR',
                        style: TextStyle(
                          fontSize: 18,
                          color: ((AppController.instance.isDartTheme == true)
                              ? Colors.white
                              : const Color.fromARGB(255, 66, 66, 66)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: ((AppController.instance.isDartTheme == true)
                              ? Colors.white
                              : const Color.fromARGB(255, 66, 66, 66)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
