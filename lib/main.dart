import 'package:flutter/material.dart';
import 'package:operaciones/screens/principal.dart';

void main() {
  runApp(const OperacionesApp());
}

class OperacionesApp extends StatelessWidget {
  const OperacionesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
