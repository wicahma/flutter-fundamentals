import 'package:first_app/25.%20Rhombus%20Button/rhombus_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Penggunaan Rhombus Button")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              ColorfulButton(
                mainColor: Colors.black,
                secondColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
