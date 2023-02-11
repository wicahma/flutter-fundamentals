import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Demo pertama'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Center(
            child: Container(
                width: 300,
                height: 200,
                color: Colors.blue.shade400,
                child: const Text(
                  'Hallo, ini adalah latihan pertama dari memuat aplikasi Dart di Flutter.',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    wordSpacing: 10,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ))),
      ),
    );
  }
}
