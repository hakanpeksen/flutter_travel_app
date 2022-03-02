import 'package:flutter/material.dart';

import '../border/custom_border.dart';
import '../radius/custom_radius.dart';

class CustomDecoration extends BoxDecoration {
  CustomDecoration(BuildContext context)
      : super(borderRadius: CircularBorderRadius.ten(), border: BorderCustom(context).allBorder());
}
