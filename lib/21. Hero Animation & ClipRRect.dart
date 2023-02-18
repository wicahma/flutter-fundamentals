import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Latihan Hero Animation"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailPage();
          }));
        },
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Hero(
                tag: "imageHero",
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://w0.peakpx.com/wallpaper/89/157/HD-wallpaper-anime-girl-aesthetic-anime-anime-girl-girl-japan-japanese-style.jpg"),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Detail Pages"),
      ),
      body: const Center(
        child: Hero(
          tag: "imageHero",
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://w0.peakpx.com/wallpaper/89/157/HD-wallpaper-anime-girl-aesthetic-anime-anime-girl-girl-japan-japanese-style.jpg"),
                )),
          ),
        ),
      ),
    );
  }
}
