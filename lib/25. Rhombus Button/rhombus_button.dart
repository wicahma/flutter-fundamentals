import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  const ColorfulButton(
      {super.key, required this.mainColor, required this.secondColor});
  final Color mainColor, secondColor;
  @override
  State<ColorfulButton> createState() =>
      _ColorfulButtonState(this.mainColor, this.secondColor);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  int elevation = 5;
  double angle = pi / 4;
  Color mainColor, secondColor;

  _ColorfulButtonState(this.mainColor, this.secondColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          elevation = 10;
          angle = pi / 4 + pi / 8;
        });
      },
      onTapUp: (details) {
        setState(() {
          elevation = 5;
          angle = pi / 4;
        });
      },
      onTapCancel: () {
        setState(() {
          elevation = 5;
          angle = pi / 4;
        });
      },
      child: Transform.rotate(
        angle: angle,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: elevation.toDouble(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor,
                      child: Transform.rotate(
                          angle: -angle,
                          child: const Icon(Icons.adb, color: Colors.white))),
                ),
                Transform.translate(
                  offset: const Offset(40, 40),
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: secondColor.withOpacity(.5),
                      )),
                ),
                Transform.translate(
                  offset: const Offset(-40, 40),
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: secondColor.withOpacity(.5),
                      )),
                ),
                Transform.translate(
                  offset: const Offset(40, -40),
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: secondColor.withOpacity(.5),
                      )),
                ),
                Transform.translate(
                  offset: const Offset(-40, -40),
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: secondColor.withOpacity(.5),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
