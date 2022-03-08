import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared_manager.dart';

class AppInitiliaze {
  Future<void> initBeforeAppStart() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    await SharedManager.initSharedPrefences();
  }
}
