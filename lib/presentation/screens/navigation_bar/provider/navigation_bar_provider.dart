import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier {
  int currentIndex = 0;
  void changeTheCurrentIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
