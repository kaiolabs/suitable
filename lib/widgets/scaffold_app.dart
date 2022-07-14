import 'package:flutter/material.dart';

class ScaffoldApp extends StatefulWidget {
  final Widget child;
  final String title;
  const ScaffoldApp({Key? key, required this.child, required this.title})
      : super(key: key);

  @override
  State<ScaffoldApp> createState() => _ScaffoldAppState();
}

class _ScaffoldAppState extends State<ScaffoldApp> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        selectedIndex = index;
        Navigator.of(context).pushReplacementNamed('/');
      } else if (index == 1) {
        selectedIndex = index;
        Navigator.of(context).pushReplacementNamed('/carrinho');
      } else if (index == 2) {
        selectedIndex = index;
        Navigator.of(context).pushReplacementNamed('/conta');
      }
    });
  }

  @override
  void initState() {
    if (widget.title == 'Carrinho') {
      selectedIndex = 1;
    } else if (widget.title == 'Conta') {
      selectedIndex = 2;
    } else if (widget.title == 'Cardápio') {
      selectedIndex = 0;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.info,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.brightness_7,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 33,
                    height: 40,
                    child: IconButton(
                      icon: const Icon(
                        Icons.language,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'PT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Cardápio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Carrinho',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Conta',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
          onTap: _onItemTapped,
        ),
        backgroundColor: const Color.fromARGB(255, 47, 47, 47),
        body: widget.child,
      ),
    );
  }
}
