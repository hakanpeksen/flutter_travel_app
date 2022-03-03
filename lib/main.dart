import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'product/init/theme/theme_manager.dart';
import 'view/home/home_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppThemeLight.instance.themeDataLight,
      home: const HomeView(),
    );
  }
}
