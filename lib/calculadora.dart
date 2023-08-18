import 'package:flutter/material.dart';


class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  late double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 20, 80),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'altura em cm',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'peso em kg',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 7, 14, 78),
              ),
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calculoimc,
            ),
            SizedBox(height: 15),
            Text(
              _result == 0.0 ? "Insira valor" : "${_result.toStringAsFixed(2)}",
              style: TextStyle(
                color: const Color.fromARGB(255, 105, 6, 6),
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20), // Espaço entre o texto e a imagem
            Image.asset(
              'assets/images/imc.png', // Caminho da imagem
              height: 150, // Altura da imagem
              width: 150, // Largura da imagem
            ),
          ],
        ),
      ),
    );
  }

  void calculoimc() {
    if (_heightController.text.isNotEmpty && _weightController.text.isNotEmpty) {
      double alt = double.parse(_heightController.text) / 100;
      double peso = double.parse(_weightController.text);

      double altquad = alt * alt;
      double result = peso / altquad;

      _result = result;
    } else {
      _result = 0.0; // or another default value
    }

    setState(() {});
  }
}