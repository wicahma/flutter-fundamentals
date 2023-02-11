import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TheApp());

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: const Text("Latihan Animated Container di mobile")),
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() {}),
            child: AnimatedContainer(
              curve: Curves.ease,
              duration: const Duration(seconds: 1),
              width: random.nextInt(max(200, 300)).toDouble(),
              height: random.nextInt(max(200, 300)).toDouble(),
              color: Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
