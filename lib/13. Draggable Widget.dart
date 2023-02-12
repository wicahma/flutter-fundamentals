import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Color _color1 = Colors.amber;
  final Color _color2 = Colors.red;
  late Color _targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Draggable Widget"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Draggable<Color>(
                  data: _color1,
                  feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color1,
                        shape: const StadiumBorder(),
                        elevation: 10,
                      )),
                  childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color1.withOpacity(.3),
                        shape: const StadiumBorder(),
                      )),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color1,
                        shape: const StadiumBorder(),
                        elevation: 0,
                      )),
                ),
                Draggable<Color>(
                  data: _color2,
                  feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color2,
                        shape: const StadiumBorder(),
                        elevation: 10,
                      )),
                  childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color2.withOpacity(.3),
                        shape: const StadiumBorder(),
                      )),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: _color2,
                        shape: const StadiumBorder(),
                        elevation: 0,
                      )),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (data) => true,
              onAccept: (data) {
                // print(data);
                isAccepted = true;
                _targetColor = data;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: _targetColor,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ))
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.grey.shade100,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
