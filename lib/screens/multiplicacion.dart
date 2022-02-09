// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class Multiplicacion extends StatelessWidget {
  const Multiplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const appTitulo = "Multiplicación";

    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitulo),
      ),
      body: const FormularioMultiplicacion(),
    );
  }
}

class FormularioMultiplicacion extends StatefulWidget {
  const FormularioMultiplicacion({Key? key}) : super(key: key);

  @override
  FormularioMultiplicacionState createState() =>
      FormularioMultiplicacionState();
}

class FormularioMultiplicacionState extends State<FormularioMultiplicacion> {
  final _formMultiplicacionKey = GlobalKey<FormState>();

  final _numeroUnoController = TextEditingController();
  final _numeroDosController = TextEditingController();

  int _resultado = 0;
  int _uno = 0, _dos = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formMultiplicacionKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroUnoController,
            decoration:
                const InputDecoration(labelText: 'Digite el primer número'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese un valor';
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroDosController,
            decoration:
                const InputDecoration(labelText: 'Digite el segundo número'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese un valor';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  child: const Text('Multiplicar'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    if (_formMultiplicacionKey.currentState!.validate()) {
                      _uno = int.parse(_numeroUnoController.text);
                      _dos = int.parse(_numeroDosController.text);
                    }
                    setState(() {
                      _resultado = _uno * _dos;
                    });
                  },
                ),
                MaterialButton(
                  child: const Text('Regresar'),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          const Text(
            'Resultado',
            style: TextStyle(fontSize: 32.0),
          ),
          Text(
            _resultado.toString(),
            style: const TextStyle(fontSize: 40.0),
          ),
        ],
      ),
    );
  }
}
