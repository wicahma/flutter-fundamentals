import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TheApp());

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  List<Widget> dataWidget = [];

  // _TheAppState() {
  //   for (var i = 1; i < 3; i++) {

  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Latihan List View")),
            body: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => setState(() {
                        dataWidget.removeLast();
                      }),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: const Text("-"),
                    ),
                    ElevatedButton(
                        onPressed: () => setState(() {
                              dataWidget.add(Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                    "Data ke-${(dataWidget.length + 1).toString()}"),
                              ));
                            }),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        child: const Text("+"))
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: dataWidget)
              ],
            )));
  }
}
