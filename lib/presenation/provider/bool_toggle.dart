import 'package:flutter/material.dart';

class ToggleBoolProvider extends ChangeNotifier {
  bool isSelected = false;
  void changeWidget() {
    notifyListeners();
  }
}
