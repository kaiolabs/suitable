import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  // Stateful Widget

  static AppController instance =
      AppController(); // Singleton Pattern - Só existe uma instancia da classe AppContoller por toda a aplicação

  // Controla os temas da aplicação

  bool isDartTheme = true; // false = Light, true = Dark
  changeTheme() {
    // Método para trocar o tema da aplicação
    isDartTheme = !isDartTheme; // Troca o valor do tema
    notifyListeners(); // Notifica os listeners que o tema foi alterado
  }
}
