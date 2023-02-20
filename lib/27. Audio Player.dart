import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Duration duration = Duration.zero;
  final player = AudioPlayer();
  late Source audioUrl;

  @override
  void initState() {
    super.initState();
    audioUrl = UrlSource(
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
    player.onDurationChanged.listen((d) {
      setState(() {
        duration = d;
      });
    });
    player.setReleaseMode(ReleaseMode.stop);
  }

  void playSound() async {
    await player.play(audioUrl, volume: 100);
  }

  void pauseSound() async {
    await player.pause();
  }

  void stopSound() async {
    await player.stop();
  }

  void resumeSound() async {
    await player.resume();
  }

  void seekAudio(int seconds) async {
    // late int seeked;
    // player.onDurationChanged.listen((duration) {
    //   seeked = seconds + duration.inSeconds;
    // });
    await player.seek(Duration(seconds: seconds));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Audio Player")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Audio Player"),
                const SizedBox(height: 20),
                Text("Duration: ${duration.toString()}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        playSound();
                        // player.play();
                      },
                      child: const Text("Play"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pauseSound();
                      },
                      child: const Text("Pause"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        resumeSound();
                      },
                      child: const Text("Resume"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        stopSound();
                      },
                      child: const Text("Stop"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        seekAudio(-5);
                      },
                      child: const Text("-5"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        seekAudio(5);
                      },
                      child: const Text("+5"),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
