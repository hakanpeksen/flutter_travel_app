import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../init/utility/border_radius_utils.dart';
import '../border/custom_border.dart';
import '../radius/custom_radius.dart';

class CustomDecoration extends BoxDecoration {
  CustomDecoration(BuildContext context)
      : super(borderRadius: CircularBorderRadius.ten(), border: BorderCustom(context).allBorder());

  CustomDecoration.onlyLeftAndRight(BuildContext context)
      : super(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Sizes.twenty.rawValue()),
            bottomRight: Radius.circular(Sizes.twenty.rawValue()),
          ),
          color: context.colorScheme.onSecondary,
        );
}
