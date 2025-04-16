import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  Future<void> initialize() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  SharedPreferences getSharedPreferences() {
    return sharedPreferences;
  }

  Future<dynamic> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  Future<dynamic> setBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  Future<dynamic> setDouble(String key, double doubleValue) async {
    await sharedPreferences.setDouble(key, doubleValue);
  }

  ///Below method is to set the double value from the SharedPreferences.
  double? getDouble(String key) {
    return sharedPreferences.getDouble(key);
  }

  ///Below method is to set the int value in the SharedPreferences.
  Future<dynamic> setInt(String key, int intValue) async {
    await sharedPreferences.setInt(key, intValue);
  }

  ///Below method is to get the int value from the SharedPreferences.
  int? getInt(String key) {
    return sharedPreferences.getInt(key);
  }

  ///Below method is to remove the received preference.
  Future<void> remove(String key) async {
    await sharedPreferences.remove(key);
  }

  ///Below method is to check the availability of the received preference .
  bool containPreference(String key) {
    if (sharedPreferences.get(key) == null) {
      return false;
    } else {
      return true;
    }
  }

  ///Below method is to clear all the preferences.
  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}