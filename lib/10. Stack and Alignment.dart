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
            backgroundColor: Colors.amber,
            title: const Text(
              "Latihan Stack and Align",
            ),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 34, 34, 34),
              fontWeight: FontWeight.normal,
            )),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber.shade100,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber.shade400,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber.shade400,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber.shade100,
                            )),
                      ],
                    )),
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(30),
                  child: const Text(
                      "Ini adalah teks yang ada di lapisan tengah dari Stack, teks ini nantinya akan berada pada bagian atas, serta teks ini juga dapat di scroll",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Monument")),
                )
              ],
            ),
            Container(
              alignment: const Alignment(.9, .95),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: const Text("Upper Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
