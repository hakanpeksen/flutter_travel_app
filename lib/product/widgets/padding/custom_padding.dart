import 'package:flutter/material.dart';

class CustomPadding extends EdgeInsets {
  const CustomPadding() : super.all(10);

  const CustomPadding.normalHorizontal() : super.symmetric(horizontal: 30);
  const CustomPadding.mediumHorizontal() : super.symmetric(horizontal: 20);

  const CustomPadding.mediumTop() : super.only(top: 20);
}
