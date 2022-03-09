import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product/init/app/app_init.dart';
import 'product/init/theme/theme_manager.dart';
import 'view/onboard.dart';
import 'view/splash/splash_context.dart';

Future<void> main() async {
  await AppInitiliaze().initBeforeAppStart();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashContext(),
        child: MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            theme: AppThemeLight.instance.themeDataLight,
            home: const OnboardView()));
  }
}
