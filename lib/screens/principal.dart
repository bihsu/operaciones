import 'package:flutter/material.dart';
import 'package:operaciones/screens/division.dart';
import 'package:operaciones/screens/multiplicacion.dart';
import 'package:operaciones/screens/resta.dart';
import 'package:operaciones/screens/suma.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Operaciones'),
      ),
      body: ListView(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Suma(),
                ),
              );
            },
            child: const Text('Suma'),
            color: Colors.redAccent,
          ),
          MaterialButton(
            child: const Text('Resta'),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Resta(),
                ),
              );
            },
          ),
          MaterialButton(
            child: const Text('Multiplicación'),
            color: Colors.greenAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Multiplicacion(),
                ),
              );
            },
          ),
          MaterialButton(
            child: const Text('División'),
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Division(),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.car_repair),
        onPressed: () {},
      ),
    );
  }
}
