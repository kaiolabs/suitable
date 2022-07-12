import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suitable/widgets/scaffold_app.dart';
import 'package:suitable/widgets/card.dart';
import 'package:suitable/widgets/item_card.dart';

class Cardapio extends StatefulWidget {
  const Cardapio({
    Key? key,
  }) : super(key: key);

  @override
  State<Cardapio> createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      title: 'Cardápio',
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 35,
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Estamos fechados. Você não poderá concluir o pedido',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 185,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 0,
                    child: Image(
                      image: AssetImage('assets/images/burge.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 152,
                    left: 0,
                    right: 0,
                    child: Container(
                        height: 35,
                        alignment: Alignment.centerLeft,
                        color: const Color.fromARGB(255, 66, 66, 66),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.hourglass_empty,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '40 a 60 Min',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.store,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    'Fechado Agora',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    top: 75,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Container(
                color: const Color.fromARGB(255, 47, 47, 47),
                child: Row(
                  children: [
                    // sombra em cima do cardápio
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 20),
                      child: Text('Produtos',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 40,
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: const TextField(
                          textInputAction: TextInputAction.done,
                          autofocus: false,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            hintText: 'Buscar...',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            border: InputBorder.none,
                            counterText: '',
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(children: [
              CardPedido(
                titulo: 'Pizzas',
                subtitulo: 'Deliciosas pizzas',
                child: Column(children: [
                  ItemCard(
                    titulo: 'Pequena',
                    subtitulo: 'A partir de R\$ 30,00',
                    descricao: 'Até 1 Sabor - 4 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza1.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Média',
                    subtitulo: 'A partir de R\$ 40,00',
                    descricao: 'Até 2 Sabores - 8 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza2.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Grande',
                    subtitulo: 'A partir de R\$ 50,00',
                    descricao: 'Até 3 Sabores - 12 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza3.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Família',
                    subtitulo: 'A partir de R\$ 60,00',
                    descricao: 'Até 4 Sabores - 16 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza4.svg',
                    ),
                  ),
                ]),
              ),
              CardPedido(
                titulo: 'Pizzas PROMO BORDA FREE',
                subtitulo: 'Deliciosas pizzas',
                child: Column(children: [
                  ItemCard(
                    titulo: 'Pequena',
                    subtitulo: 'A partir de R\$ 30,00',
                    descricao: 'Até 1 Sabor - 4 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza1.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Média',
                    subtitulo: 'A partir de R\$ 40,00',
                    descricao: 'Até 2 Sabores - 8 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza2.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Grande',
                    subtitulo: 'A partir de R\$ 50,00',
                    descricao: 'Até 3 Sabores - 12 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza3.svg',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Família',
                    subtitulo: 'A partir de R\$ 60,00',
                    descricao: 'Até 4 Sabores - 16 pedaços',
                    image: SvgPicture.asset(
                      'assets/images/pizza4.svg',
                    ),
                  ),
                ]),
              ),
              CardPedido(
                titulo: 'Bebidas 🍹',
                subtitulo: 'Pra matar a sede 💦',
                child: Column(children: [
                  ItemCard(
                    titulo: 'Coca-Cola',
                    subtitulo: 'R\$ 3,00',
                    descricao: 'Lata',
                    image: Image.asset(
                      'assets/images/lata.png',
                    ),
                  ),
                  ItemCard(
                    titulo: 'Coca Cola',
                    subtitulo: 'R\$ 6,00',
                    descricao: '2 litros',
                    image: Image.asset(
                      'assets/images/coca.png',
                    ),
                  ),
                ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
