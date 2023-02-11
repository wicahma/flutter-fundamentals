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
          title: const Text("Flexible Layout"),
          backgroundColor: Colors.amber,
        ),
        body: Column(children: <Widget>[
          Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.amber.shade100,
                        child: const Center(
                          child: Text("1"),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.amber.shade200,
                        child: const Center(
                          child: Text("2"),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.amber.shade300,
                        child: const Center(
                          child: Text("3"),
                        ),
                      ))
                ],
              )),
          Flexible(flex: 2, child: Container(color: Colors.amber.shade200)),
          Flexible(flex: 1, child: Container(color: Colors.amber.shade300))
        ]),
      ),
    );
  }
}
