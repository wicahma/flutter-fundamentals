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
        body: ListView(children: <Widget>[
          Container(
            width: 200,
            height: 200,
            // padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: const Image(
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyh6fCxYcLIsj7yH-NpIAamM5WHT7Zw6m1JZF1ScPCiI9nxW8sXhGay8123mmXAZpSTX0&usqp=CAU")),
          ),
          Container(
            width: 200,
            height: 200,
            // padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber),
            child: const Image(
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
                image: AssetImage("assets/MAY.png")),
          ),
        ]),
      ),
    );
  }
}
