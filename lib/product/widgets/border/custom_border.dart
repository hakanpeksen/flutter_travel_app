import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BorderCustom {
  final BuildContext context;
  BorderCustom(this.context);

  Border allBorder() {
    return Border.all(color: context.colorScheme.primary);
  }
}
