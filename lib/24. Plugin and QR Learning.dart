import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Penggunaan QR Code")),
        body: Center(
          child: QrImage(
            eyeStyle: const QrEyeStyle(eyeShape: QrEyeShape.circle),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.circle,
            ),
            backgroundColor: Colors.amber.shade900,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(5.0),
            embeddedImage: const NetworkImage(
                "https://yt3.googleusercontent.com/ytc/AL5GRJVFUbrqLgTKs3qvoiGiZDvJHXkB_pzHwyussmGX=s900-c-k-c0x00ffffff-no-rj"),
            embeddedImageStyle: QrEmbeddedImageStyle(size: const Size(50, 50)),
            semanticsLabel: "QR Code",
            data:
                "https://www.youtube.com/watch?v=7CFAEXymRvM&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=33",
            version: QrVersions.auto,
            size: 350.0,
          ),
        ),
      ),
    );
  }
}
