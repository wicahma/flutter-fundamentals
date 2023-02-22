import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  double indPadding = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text("Animated Switcher",
                style: TextStyle(color: Colors.black)),
          ),
          body: Column(
            children: <Widget>[
              Flexible(
                  child: Row(
                children: <Widget>[
                  Flexible(
                      child: AnimatedPadding(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.all(indPadding),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        (indPadding == 20) ? indPadding = 10 : indPadding = 20;
                      }),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  )),
                  Flexible(
                      child: Container(
                    color: Colors.pink,
                  )),
                ],
              )),
              Flexible(
                  child: Row(
                children: <Widget>[
                  Flexible(
                      child: Container(
                    color: Colors.pink,
                  )),
                  Flexible(
                      child: AnimatedPadding(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.all(indPadding),
                    child: Container(
                      color: Colors.red,
                    ),
                  )),
                ],
              )),
            ],
          )),
    );
  }
}
