import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyles {
  static const _textStyleLight = TextStyle(
    color: AppColors.emperor,
  );

  static final headline4 = _textStyleLight.copyWith(fontSize: 30, fontWeight: FontWeight.bold);

  static final headline6 = _textStyleLight.copyWith(fontSize: 20, fontWeight: FontWeight.w500);
}
