import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.amber,
          margin: const EdgeInsets.all(1),
          child: ListView(
            children: <Widget>[
              alarm_card(Icons.abc, "ABC ma broh"),
              alarm_card(Icons.alarm, "Wake me up!"),
              alarm_card(Icons.warning, "An error has encountered"),
            ],
          ),
        ),
      ),
    );
  }

  Card alarm_card(IconData iconData, String text) {
    return Card(
      elevation: 0,
      color: Colors.amber.shade100,
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
