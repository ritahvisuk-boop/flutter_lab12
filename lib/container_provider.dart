
import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier {
  double width = 50;
  double height = 50;
  double radius = 0;

  void setWidth(double value) {
    width = value;
    notifyListeners();
  }

  void setHeight(double value) {
    height = value;
    notifyListeners();
  }

  void setRadius(double value) {
    radius = value;
    notifyListeners();
  }
}
