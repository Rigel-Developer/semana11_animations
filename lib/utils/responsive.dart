import 'package:flutter/material.dart';

class ResponsiveUI {
  double _width = 0;
  double _height = 0;

  ResponsiveUI(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;

  static double wpStatic(BuildContext context, double width) =>
      MediaQuery.of(context).size.width * width;

  static double hpStatic(BuildContext context, double height) =>
      MediaQuery.of(context).size.height * height;
}
