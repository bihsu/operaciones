import 'package:flutter/material.dart';
import 'package:operaciones/helper/operaciones_heper.dart';

class Resta extends StatelessWidget {
  const Resta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    const titulo = "Resta";

    return Scaffold(
      appBar: AppBar(
        title: const Text(titulo),
      ),
      body: const FormularioResta(),
    );
  }
}

class FormularioResta extends StatefulWidget {
  const FormularioResta({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FormularioRestaState();
}

class FormularioRestaState extends State<FormularioResta> {
  final _formRestaKey = GlobalKey<FormState>();

  final _numeroUnoController = TextEditingController();
  final _numeroDosController = TextEditingController();

  int _resultado = 0;
  int _uno = 0, _dos = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formRestaKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroUnoController,
            decoration: const InputDecoration(labelText: 'Primer número'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese un valor';
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroDosController,
            decoration: const InputDecoration(labelText: 'Segundo número'),
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
                  child: const Text('Resta'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    if (_formRestaKey.currentState!.validate()) {
                      _uno = int.parse(_numeroUnoController.text);
                      _dos = int.parse(_numeroDosController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Datos correctos'),
                        ),
                      );
                    }
                    setState(() {
                      _resultado = _uno - _dos;
                    });
                  },
                ),
                MaterialButton(
                  child: const Text('Regresar'),
                  color: Colors.redAccent,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const Text(
            "Resultado",
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
