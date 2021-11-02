import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator'), centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(keyboardType: TextInputType.number),
              TextField(keyboardType: TextInputType.number),
              ElevatedButton(
                onPressed: () {},
                child: Text('Calcular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
