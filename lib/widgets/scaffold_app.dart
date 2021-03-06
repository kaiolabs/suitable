import 'package:flutter/material.dart';
import 'package:suitable/controllers/app_controller.dart';

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
          backgroundColor: ((AppController.instance.isDartTheme == false)
              ? Colors.white
              : null),
          title: Text(
            widget.title,
            style: TextStyle(
                color: ((AppController.instance.isDartTheme == false)
                    ? Colors.black
                    : null)),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info,
                color: ((AppController.instance.isDartTheme == false)
                    ? Colors.black
                    : null),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.brightness_7,
                color: ((AppController.instance.isDartTheme == false)
                    ? Colors.black
                    : null),
              ),
              onPressed: () {
                AppController.instance.changeTheme();
              },
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
                      icon: Icon(
                        Icons.language,
                        color: ((AppController.instance.isDartTheme == false)
                            ? Colors.black
                            : null),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    'PT',
                    style: TextStyle(
                        fontSize: 13,
                        color: ((AppController.instance.isDartTheme == false)
                            ? Colors.black
                            : null)),
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
          selectedItemColor: const Color.fromARGB(255, 238, 86, 86),
          onTap: _onItemTapped,
        ),
        body: widget.child,
      ),
    );
  }
}
