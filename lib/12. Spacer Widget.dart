import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Stack and Align"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.amber.shade300,
              ),
              const Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.amber.shade400,
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.amber.shade500,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
