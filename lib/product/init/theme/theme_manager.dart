import 'package:flutter/material.dart';

import 'app_color.dart';

const String fontFamily = 'GTWalsheimPro';

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      textTheme: ThemeData.light().textTheme.apply(fontFamily: fontFamily),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.emperor,
        onPrimary: AppColors.black,
        secondary: AppColors.brightSun,
        onSecondary: AppColors.white,
        error: AppColors.black,
        onError: AppColors.black,
        surface: AppColors.gray,
        background: AppColors.black,
        onSurface: AppColors.black,
        onBackground: AppColors.black,
      ),
    );
  }
}

// secondary: AppColors.gray,
   //onSecondary: AppColors.white,

//custom_border = secondary
//  _descriptionText =secondary  // splash_part_view





//secondary: AppColors.brightSun,

//custom_border = onSecondary  yaptım



//input_field = onsecondary kullanıyor

