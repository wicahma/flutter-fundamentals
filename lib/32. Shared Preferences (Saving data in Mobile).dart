import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController textControllerNama =
      TextEditingController(text: "Teguh");
  bool isActive = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", textControllerNama.text);
    pref.setBool("isActive", isActive);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No name";
  }

  Future<bool> getIsActive() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("isActive") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text(
                  "Latihan Shared Preference & Double Question Mark")),
          body: Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: textControllerNama,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Nama"),
                  ),
                  Switch(
                      value: isActive,
                      onChanged: (value) => {
                            setState(() {
                              isActive = value;
                            })
                          }),
                  ElevatedButton(
                      onPressed: () {
                        saveData();
                      },
                      child: const Text("Simpan")),
                  ElevatedButton(
                      onPressed: () {
                        getNama().then((value) => setState(
                              () {
                                textControllerNama.text = value;
                              },
                            )); // Cara 1
                        // textControllerNama.text = getNama(); // Cara 2
                        getIsActive().then((value) => setState(
                              () {
                                isActive = value;
                              },
                            ));
                      },
                      child: const Text("Load"))
                ],
              ),
            ),
          )),
    );
  }
}
