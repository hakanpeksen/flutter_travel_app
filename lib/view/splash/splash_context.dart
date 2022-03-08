import 'package:flutter/material.dart';

import 'splash_model.dart';

class SplashContext extends ChangeNotifier {
  int selectedIndex = 0;

  bool get isLastPage => selectedIndex == SplashModels.splashItems.length - 1;

  void incrementSelectedPage([int? value]) {
    if (value != null) {
      selectedIndex = value;
    }
    notifyListeners();
  }
}

class SplashModels {
  static final List<SplashModel> splashItems = [
    SplashModel('girl'),
    SplashModel('grass'),
    SplashModel('airplane'),
  ];
}
