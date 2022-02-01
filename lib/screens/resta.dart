import 'package:flutter/material.dart';

class Resta extends StatelessWidget {
  const Resta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resta'),
      ),
      body: Center(
        child: MaterialButton(
          child: const Text('Regresar'),
          color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
