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
      body: const FormularioDivision(),
    );
  }
}

class FormularioDivision extends StatefulWidget {
  const FormularioDivision({Key? key}) : super(key: key);

  @override
  FormularioDivisionState createState() => FormularioDivisionState();
}

class FormularioDivisionState extends State<FormularioDivision> {
  final _formDivisionKey = GlobalKey<FormState>();

  final _numeroUnoController = TextEditingController();
  final _numeroDosController = TextEditingController();

  double _resultado = 0;
  int _uno = 0, _dos = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formDivisionKey,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    if (_formDivisionKey.currentState!.validate()) {
                      _uno = int.parse(_numeroUnoController.text);
                      _dos = int.parse(_numeroDosController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("la division es ${_uno + _dos}"),
                        ),
                      );
                    }
                    setState(() {
                      _resultado = _uno / _dos;
                    });
                  },
                  child: const Text('Division'),
                  color: Colors.orangeAccent,
                ),
                MaterialButton(
                  child: const Text('Regresa papu'),
                  color: Colors.redAccent,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
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
