// ignore_for_file: sort_child_properties_last, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:suitable/pages/pedido.dart';

import '../controllers/app_controller.dart';

class ItemCard extends StatefulWidget {
  final String titulo;
  final String subtitulo;
  final String descricao;
  final image;
  const ItemCard({
    Key? key,
    required this.titulo,
    required this.subtitulo,
    required this.descricao,
    required this.image,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  ValueNotifier<bool> isRecuo = ValueNotifier<bool>(false);

  toggleRecuo() {
    isRecuo.value = !isRecuo.value;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Pedido(
              titulo: widget.titulo,
              subtitulo: widget.subtitulo,
              descricao: widget.descricao,
              image: widget.image,
            ),
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          ((AppController.instance.isDartTheme == false)
              ? Colors.white
              : const Color.fromARGB(255, 66, 66, 66)),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: (AppController.instance.isDartTheme == false)
                      ? const Color.fromARGB(255, 155, 155, 155)
                      : const Color.fromARGB(255, 82, 82, 82),
                  width: 1,
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    height: 63,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            widget.titulo,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color:
                                  ((AppController.instance.isDartTheme == true)
                                      ? Colors.white
                                      : const Color.fromARGB(255, 66, 66, 66)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 3),
                          child: Text(
                            widget.descricao,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color:
                                  ((AppController.instance.isDartTheme == true)
                                      ? Colors.white
                                      : const Color.fromARGB(255, 66, 66, 66)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 3),
                          child: Text(
                            widget.subtitulo,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:
                                  ((AppController.instance.isDartTheme == true)
                                      ? Colors.white
                                      : const Color.fromARGB(255, 66, 66, 66)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: widget.image,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
