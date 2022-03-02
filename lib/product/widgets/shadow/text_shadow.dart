import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TextShadowCustom extends BoxShadow {
  TextShadowCustom(BuildContext context)
      : super(
            color: context.colorScheme.onPrimary.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4);
}
