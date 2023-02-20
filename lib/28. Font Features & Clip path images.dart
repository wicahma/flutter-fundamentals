import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Font Features & Path ClipPath Image")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: const Image(
                    image: NetworkImage(
                        "https://www.usnews.com/object/image/00000161-00f5-deb3-a1eb-88f5bda10000/bc18.countries_japan_crop.jpg?update-time=1516140295042&size=responsiveGallery")),
              ),
              const Text(
                "*Note, for more information about fontfeatures, go to Microsoft Typography Web",
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Example 1",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "Small Caps",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
              ),
              const Text(
                "Example 1/2 fracs",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("frac")]),
              ),
            ],
          )),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
