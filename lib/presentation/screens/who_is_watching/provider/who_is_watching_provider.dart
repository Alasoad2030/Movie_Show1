import 'package:flutter/material.dart';

class WhoIsWatchingProvider extends ChangeNotifier {
  double contaierWidth = 50;
  double contaierHieght = 50;
  changeContainerSize() {
    contaierWidth = 100;
    contaierHieght = 100;
    notifyListeners();
  }
}
