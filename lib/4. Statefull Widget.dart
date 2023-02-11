import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const TheApp());

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  State<TheApp> createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  int angka = 0;
  void addNumber() {
    angka >= 100
        ? angka = 100
        : setState(() {
            angka++;
          });
  }

  void removeNumber() {
    angka <= 0
        ? angka = 0
        : setState(() {
            angka--;
          });
  }

  void resetNumber() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Belajar Container'),
            backgroundColor: Colors.amber,
            shadowColor: const Color.fromARGB(255, 255, 255, 255),
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.amber,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.dark),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 15 + angka.toDouble()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: removeNumber,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black12),
                      ),
                      child: const Text("-")),
                  ElevatedButton(
                      onPressed: addNumber,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black12),
                      ),
                      child: const Text("+")),
                ],
              ),
              ElevatedButton(
                  onPressed: resetNumber,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.redAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black12),
                  ),
                  child: const Text("Reset")),
            ],
          ))),
    );
  }
}
