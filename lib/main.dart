import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = 'Resultado da soma';
  String vlResult = '0';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  this.number1 = double.parse(value);
                },
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.deepPurpleAccent),
                decoration: InputDecoration(
                  labelText: 'Número 01',
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                ),
              ),
              Padding(padding: EdgeInsets.all(4.0)),
              TextField(
                onChanged: (value) {
                  this.number2 = double.parse(value);
                },
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.deepPurpleAccent),
                decoration: InputDecoration(
                  labelText: 'Número 02',
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                ),
              ),
              Padding(padding: EdgeInsets.all(4.0)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: _calcular,
                    child: Text('Calcular'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))))),
              ),
              Padding(padding: EdgeInsets.all(4.0)),
              Text(
                this.result,
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
              Padding(padding: EdgeInsets.all(4.0)),
              Text(
                vlResult,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _calcular() {
    double calc = this.number1 + this.number2;
    setState(() {
      this.vlResult = calc.toStringAsFixed(0);
    });
  }
}
