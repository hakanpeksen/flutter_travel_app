import 'package:flutter/material.dart';
import 'package:travel_app/view/home/home_view.dart';
import 'package:travel_app/view/splash/splash_view.dart';

import '../product/init/shared_manager.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool hasSplashView =
        SharedManager.instace.getBoolValue(SharedKeys.showSplashView) ?? false;

    return hasSplashView ? const HomeView() : const SplashView();
  }
}
