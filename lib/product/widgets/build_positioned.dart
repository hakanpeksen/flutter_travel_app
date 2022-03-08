import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../view/splash/splash_model.dart';

class BuilPositionedWidget extends StatelessWidget {
  const BuilPositionedWidget({
    Key? key,
    this.top,
    this.right,
    this.bottom,
    this.left,
    required this.model,
  }) : super(key: key);

  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final SplashModel model;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SvgPicture.asset(model.imageWithPath),
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );
  }
}
