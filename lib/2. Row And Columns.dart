import 'package:flutter/cupertino.dart';
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
            appBar: AppBar(title: const Text('Aplikasi Demo pertama')),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Ini adalah text pertama'),
                const Text('Ini adalah text kedua'),
                const Text('Ini adalah text ketiga'),
                const Text('Ini adalah text keempat'),
                const Text('Ini adalah text kelima'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  key: const Key('row'),
                  children: const <Widget>[
                    Text('1 data'),
                    Text('2 data'),
                  ],
                ),
                const Text('Ini adalah text keenam'),
                const Text('Ini adalah text ketujuh'),
                const Text('Ini adalah text kedelapan'),
              ],
            )));
  }
}
