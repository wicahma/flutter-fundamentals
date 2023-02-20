import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink, title: const Text("Image Gradient")),
      body: Container(
          child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: <Color>[Colors.white, Colors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height)),
        blendMode: BlendMode.dstIn,
        child: const Image(
          image: NetworkImage(
              "https://images.pexels.com/photos/1440476/pexels-photo-1440476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
      )),
    ));
  }
}
