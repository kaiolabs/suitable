// ignore_for_file: sort_child_properties_last, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../controllers/app_controller.dart';

class CardPedido extends StatefulWidget {
  final String titulo;
  final String subtitulo;
  final Widget child;
  const CardPedido({
    Key? key,
    required this.titulo,
    required this.subtitulo,
    required this.child,
  }) : super(key: key);

  @override
  State<CardPedido> createState() => _CardPedidoState();
}

class _CardPedidoState extends State<CardPedido> {
  ValueNotifier<bool> isRecuo = ValueNotifier<bool>(false);

  toggleRecuo() {
    isRecuo.value = !isRecuo.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: ((AppController.instance.isDartTheme == false)
          ? Colors.white
          : const Color.fromARGB(255, 66, 66, 66)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: ((AppController.instance.isDartTheme == true)
                            ? Colors.white
                            : const Color.fromARGB(255, 66, 66, 66)),
                        width: 7,
                        style: BorderStyle.solid,
                      ),
                      bottom: const BorderSide(
                        color: Color.fromARGB(255, 81, 81, 81),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      toggleRecuo();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ((AppController.instance.isDartTheme == false)
                            ? Colors.white
                            : const Color.fromARGB(255, 66, 66, 66)),
                      ),
                      // borda esquerda do botão fica transparente quando o botão está selecionado
                    ),
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SizedBox(
                              height: 41,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      widget.titulo,
                                      style: TextStyle(
                                        color: ((AppController
                                                    .instance.isDartTheme ==
                                                true)
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 66, 66, 66)),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 7, top: 3),
                                    child: Text(
                                      widget.subtitulo,
                                      style: TextStyle(
                                        color: ((AppController
                                                    .instance.isDartTheme ==
                                                true)
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 66, 66, 66)),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              toggleRecuo();
                            },
                            icon: ValueListenableBuilder(
                              valueListenable: isRecuo,
                              builder: (BuildContext context, bool recuo, _) =>
                                  AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1000),
                                child: recuo
                                    ? const Icon(
                                        Icons.expand_less,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.expand_more,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: isRecuo,
            builder: (BuildContext context, bool recuo, _) => AnimatedSwitcher(
              child: recuo ? widget.child : Container(),
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (Widget child, Animation<double> animation) {
                const begin = Offset(0.0, 3.0);
                const end = Offset.zero;
                const curve = Curves.ease;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
