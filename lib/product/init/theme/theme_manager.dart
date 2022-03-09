import 'package:flutter/material.dart';

import 'app_color.dart';

const String fontFamily = 'GTWalsheimPro';

class AppThemeLight {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  ThemeData get themeDataLight => ThemeData(
        brightness: Brightness.light,
        fontFamily: fontFamily,
        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: AppColors.emperor,
              onPrimary: AppColors.black,
              secondary: AppColors.brightSun,
              onSecondary: AppColors.pampas,
              error: AppColors.black,
              onError: AppColors.black,
              surface: AppColors.gray,
              background: AppColors.black,
              onSurface: AppColors.black,
              onBackground: AppColors.black,
            ),
      );
}




// class ThemeManager {
//   static ThemeData get lightTheme {
//     return ThemeData.light().copyWith(
//       textTheme: ThemeData.light().textTheme.apply(fontFamily: fontFamily),
//       colorScheme: const ColorScheme(
//         brightness: Brightness.light,
//         primary: AppColors.emperor,
//         onPrimary: AppColors.black,
//         secondary: AppColors.brightSun,
//         onSecondary: AppColors.pampas,
//         error: AppColors.black,
//         onError: AppColors.black,
//         surface: AppColors.gray,
//         background: AppColors.black,
//         onSurface: AppColors.black,
//         onBackground: AppColors.black,
//       ),
//     );
//   }
// }
