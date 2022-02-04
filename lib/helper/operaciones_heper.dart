import 'package:operaciones/screens/resta.dart';

class Operaciones {
  static resta({primero = String, segundo = String}) {
    int a = int.parse(primero);
    int b = int.parse(segundo);

    return a - b;
  }
}
