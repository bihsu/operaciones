import 'package:flutter/material.dart';

class Division extends StatelessWidget {
  const Division({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('División'),
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
