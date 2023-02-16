import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My App")),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                obscureText: true,
                maxLength: 30,
                onChanged: (value) => setState(() {}),
                controller: controller,
                decoration: InputDecoration(
                  fillColor: Colors.amber[400],
                  // focusColor: Colors.amber,
                  // hoverColor: Colors.amber,
                  // iconColor: Colors.amber,
                  prefix: Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                    // color: Colors.amber,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  labelText: "Enter your password",
                  // prefixText: "Password: ",
                  // prefixIcon: Icon(Icons.people),
                  icon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  hintText: "this is hint!",
                ),
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
