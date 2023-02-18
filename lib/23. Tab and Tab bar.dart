import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  final TabBar myTabs = const TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white,
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home, color: Colors.amberAccent),
          text: "Home",
        ),
        Tab(
          icon: Icon(Icons.settings, color: Colors.black),
        ),
        Tab(
          icon: Icon(Icons.account_circle, color: Colors.black),
        )
      ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Contoh Tab Bar"),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabs.preferredSize.height),
                child: Container(child: myTabs),
              ),
            ),
            body: const TabBarView(children: <Widget>[
              Center(
                child: Text("Home"),
              ),
              Center(
                child: Text("Settings"),
              ),
              Center(
                child: Text("Profile"),
              )
            ]),
          )),
    );
  }
}
