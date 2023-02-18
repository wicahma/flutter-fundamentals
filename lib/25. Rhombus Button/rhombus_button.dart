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
  Color mainColor, secondColor;

  _ColorfulButtonState(this.mainColor, this.secondColor);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 200,
          child: Material(
            color: mainColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
            ),
          ),
        )
      ],
    );
  }
}
