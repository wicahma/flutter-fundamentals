import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AppColor with ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
  // void setColor(bool color) {
  //   _isLightBlue = color;
  //   notifyListeners();
  // }
}
