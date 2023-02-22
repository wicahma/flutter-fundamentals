import 'package:first_app/29.%20HTTP%20Request/tabs/another_tab.dart';
import 'package:first_app/29.%20HTTP%20Request/tabs/get_tab.dart';
import 'package:first_app/29.%20HTTP%20Request/tabs/post_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final TabBar httpTab = const TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        gradient: LinearGradient(
          colors: <Color>[Colors.amber, Colors.amberAccent],
        ),
      ),
      tabs: <Tab>[
        Tab(
          text: "Post",
        ),
        Tab(
          text: "Get",
        ),
        Tab(
          text: "Another Req",
        ),
      ]);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.light),
            title: const Text("Working With HTTP Requests"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(httpTab.preferredSize.height),
              child: Container(child: httpTab),
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              PostTab(),
              GetTab(),
              AnotherTab(),
            ],
          ),
        ),
      ),
    );
  }
}
