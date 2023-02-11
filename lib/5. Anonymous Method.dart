import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TheApp());

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  String message = "Ini text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Anonymus Method")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(message),
          ElevatedButton(
            onPressed: () {
              setState(() {
                message = "Tombol sudah ditekan";
              });
            },
            child: const Text("Tekan Saya"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                message = "Ini text";
              });
            },
            child: const Text("Reset"),
          ),
        ],
      )),
    ));
  }
}
