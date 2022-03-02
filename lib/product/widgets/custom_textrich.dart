import 'package:flutter/material.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    Key? key,
    required this.textSpan1,
    required this.textSpan2,
    required this.textSpan1Style,
    required this.textSpan2Style,
    this.textAlign,
  }) : super(key: key);

  final String textSpan1;
  final String textSpan2;
  final TextStyle? textSpan1Style;
  final TextStyle? textSpan2Style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: textSpan1, children: [TextSpan(text: textSpan2, style: textSpan2Style)]),
      style: textSpan1Style,
      textAlign: textAlign,
    );
  }
}
