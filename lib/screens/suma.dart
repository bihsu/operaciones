import 'package:flutter/material.dart';

class Suma extends StatelessWidget {
  const Suma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    const appTitulo = "Suma";

    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitulo),
      ),
      body: const FormularioSuma(),
    );
  }
}

class FormularioSuma extends StatefulWidget {
  const FormularioSuma({Key? key}) : super(key: key);

  @override
  FormularioSumaState createState() => FormularioSumaState();
}

class FormularioSumaState extends State<FormularioSuma> {
  final _formSumaKey = GlobalKey<FormState>();

  final _numeroUnoController = TextEditingController();
  final _numeroDosController = TextEditingController();

  int _resultado = 0;
  int _uno = 0, _dos = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formSumaKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroUnoController,
            decoration:
                const InputDecoration(labelText: 'Entre el primer número'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingresa un valor';
              }
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _numeroDosController,
            decoration:
                const InputDecoration(labelText: 'Entre el segundo número'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingresa un valor';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: MaterialButton(
              onPressed: () {
                if (_formSumaKey.currentState!.validate()) {
                  _uno = int.parse(_numeroUnoController.text);
                  _dos = int.parse(_numeroDosController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("la suma es ${_uno + _dos}"),
                    ),
                  );
                }
                setState(() {
                  _resultado = _uno + _dos;
                });
              },
              child: const Text('Sumar'),
              color: Colors.orangeAccent,
            ),
          ),
          const Text(
            "Resultado:",
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