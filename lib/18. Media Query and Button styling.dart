import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Latihan Media Query & Button"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Center(
              child: (Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generatedContainers,
              )),
            )
          : Row(
              children: generatedContainers,
            ),
    );
  }

  List<Widget> get generatedContainers {
    return <Widget>[
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
        ),
        onPressed: () {},
        child: const Text("Button 1"),
      ),
      Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 5,
        child: Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.yellow],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.amber,
              focusColor: Colors.amber,
              // highlightColor: Colors.white,
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: const Center(
                child: Text(
                  "The Button",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
