import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedManager {
  bool? getBoolValue(SharedKeys keys);
  Future<bool>? setBoolValue(SharedKeys keys, bool value);
}

class SharedManager implements ISharedManager {
  static SharedManager? _instace;
  SharedPreferences? _preferences;

  SharedManager._();

  static SharedManager get instace {
    if (_instace != null) {
      return _instace!;
    }
    _instace = SharedManager._();
    return _instace!;
    // return _instace ??= SharedManager._();
  }

  static Future<void> initSharedPrefences() async {
    if (SharedManager.instace._preferences != null) return;
    SharedManager.instace._preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<bool>? setBoolValue(SharedKeys keys, bool value) async {
    return await _preferences?.setBool(keys.toString(), value) ?? false;
  }

  @override
  bool? getBoolValue(SharedKeys keys) {
    return _preferences?.getBool(keys.toString());
  }
}

enum SharedKeys { showSplashView }






// abstract class ISharedManager {
//   bool? getBoolValue(SharedKeys keys);
//   Future<bool>? setBoolValue(SharedKeys keys, bool value);
// }

// class SharedManager implements ISharedManager {
//   static SharedPreferences? _instance;
//   static SharedPreferences get instance => _instance!;

//   static Future<SharedPreferences> initSharedPrefences() async {
//     return _instance ??= await SharedPreferences.getInstance();
//   }

//   @override
//   Future<bool>? setBoolValue(SharedKeys keys, bool value) async {
//     return await _instance?.setBool(keys.toString(), value) ?? false;
//   }

//   @override
//   bool? getBoolValue(SharedKeys keys) {
//     return _instance?.getBool(keys.toString());
//   }
// }