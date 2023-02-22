import 'package:first_app/34.%20Provider%20State%20management/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AppColor>(
        create: (context) {
          return AppColor();
        },
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[50],
              title: Consumer<AppColor>(
                builder: (context, appColor, _) => Text(
                    'Provider State Management',
                    style: TextStyle(color: appColor.color)),
              ),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Consumer<AppColor>(
                    builder: (context, appColor, _) => AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: appColor.color,
                    ),
                  ),
                  Consumer<AppColor>(
                    builder: (context, appColor, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text("AB",
                                style: TextStyle(
                                  color: (appColor.isLightBlue)
                                      ? Colors.black38
                                      : Colors.black,
                                )),
                          ),
                          Switch(
                              value: appColor.isLightBlue,
                              onChanged: (value) {
                                appColor.isLightBlue = value;
                              }),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              "LB",
                              style: TextStyle(
                                color: (appColor.isLightBlue)
                                    ? Colors.black
                                    : Colors.black38,
                              ),
                            ),
                          ),
                        ]),
                  )
                ]))),
      ),
    );
  }
}
