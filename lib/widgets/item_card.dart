// ignore_for_file: sort_child_properties_last, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

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
    return Container(
      alignment: Alignment.center,
      color: const Color.fromARGB(255, 66, 66, 66),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 81, 81, 81),
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
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 3),
                          child: Text(
                            widget.descricao,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 214, 214, 214),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 3),
                          child: Text(
                            widget.subtitulo,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
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
