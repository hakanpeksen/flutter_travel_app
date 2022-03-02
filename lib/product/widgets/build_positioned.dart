import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuilPositionedWidget extends StatelessWidget {
  const BuilPositionedWidget({
    Key? key,
    required this.assetName,
    this.top,
    this.right,
    this.bottom,
    this.left,
  }) : super(key: key);

  final String assetName;
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SvgPicture.asset(assetName),
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );
  }
}
