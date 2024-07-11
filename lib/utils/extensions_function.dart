import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {

  double getWidth() => MediaQuery.of(this).size.width;

  double getHeight() => MediaQuery.of(this).size.height;

  double getPercentWidth(double percentage) =>
      MediaQuery.of(this).size.width * percentage;

  double getPercentHeight(double percentage) =>
      MediaQuery.of(this).size.height * percentage;

  Widget paddingHorizontal(double size) {
    return SizedBox(
      width: size,
    );
  }

  Widget paddingVertical(double size) {
    return SizedBox(
      height: size,
    );
  }    
}