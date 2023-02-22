import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, -1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
                child: isSwitched
                    ? const Text(
                        "Switched",
                        style: TextStyle(fontSize: 30),
                        key: ValueKey<String>("Switched"),
                      )
                    : const Text(
                        "Not Switched",
                        style: TextStyle(fontSize: 30),
                        key: ValueKey<String>("Not Switched"),
                      ),
              ),
              Switch(
                activeColor: Colors.green,
                inactiveTrackColor: Colors.red.shade100,
                inactiveThumbColor: Colors.red,
                value: isSwitched,
                onChanged: (value) => {
                  setState(() {
                    isSwitched = value;
                  })
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
