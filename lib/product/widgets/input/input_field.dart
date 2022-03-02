import 'package:flutter/material.dart';

import '../../constants/image/png_constant.dart';
import '../../constants/text/text_constant.dart';
import '../padding/custom_padding.dart';
import '../radius/custom_radius.dart';

class SearchInputField extends TextField {
  SearchInputField({Key? key, required ThemeData data})
      : super(
          key: key,
          decoration: InputDecoration(
              contentPadding: const CustomPadding(), // super.all(10);
              border: OutlineInputBorder(borderRadius: CircularBorderRadius.ten()),
              fillColor: data.colorScheme.onSecondary,
              filled: true,
              hintText: TextConstant.instance.hintText,
              hintStyle: data.textTheme.bodyText1?.copyWith(color: data.colorScheme.primary),
              prefixIcon: Image.asset(PngConstant.instance.search)),
        );
}
