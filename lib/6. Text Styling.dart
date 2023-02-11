import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const TheApp());

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('latihan Text Style'),
          backgroundColor: Colors.amber,
          scrolledUnderElevation: 0,
          shadowColor: const Color.fromRGBO(255, 255, 255, 1),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.amber,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          toolbarHeight: 32,
        ),
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.1 +
                          400.0,
                ),
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                transformAlignment: Alignment.center,
                transform: Matrix4.rotationZ(.2),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.amber.shade400,
                        blurRadius: 30,
                        spreadRadius: 5,
                        blurStyle: BlurStyle.normal),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.amber,
                      Colors.amberAccent,
                    ],
                  ),
                ),
                child: const Text("Anjas",
                    style: TextStyle(
                        fontFamily: "Monument",
                        fontSize: 32,
                        color: Colors.white)))),
      ),
    );
  }
}
