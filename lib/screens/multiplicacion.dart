import 'package:flutter/material.dart';

class Multiplicacion extends StatelessWidget {
  const Multiplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multipliación'),
      ),
      body: Center(
        child: MaterialButton(
          child: const Text('Regresar'),
          color: Colors.orangeAccent,
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
