import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsHelper extends GetxController {
  static String token = "";
  static  bool remember = false;
  static String name = "";
  static String email = "";
  static String profileImage = "";
  static String userId = "";
  static  bool isCreator = false;

  ///<<<======================== Get All Data Form Shared Preference ==============>

  static Future<void> getAllPrefData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    token = preferences.getString("token") ?? "";
    remember = preferences.getBool("remember") ?? false;
    name = preferences.getString("name") ?? "";
    email = preferences.getString("email") ?? "";
    profileImage = preferences.getString("profileImage") ?? "";
    userId = preferences.getString("userId") ?? "";
    isCreator = preferences.getBool("isCreator") ?? false;
    

    if (kDebugMode) {
      print(userId);
    }
  }

  ///<<<======================== Get All Data Form Shared Preference ============>
  static Future<void> removeAllPrefData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    preferences.setString("token", "");
    preferences.setString("name", "");
    preferences.setString("email", "");
    preferences.setString("profileImage", "");
    preferences.setString("userId", "");
    preferences.setBool("remember", false);

    getAllPrefData();
  }

  ///<<<======================== Get Data Form Shared Preference ==============>

  static Future<String> getString(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(key) ?? "";
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key);
  }

  static Future<int> getInt(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(key) ?? (-1);
  }

  ///<<<=====================Save Data To Shared Preference=====================>

  static Future setString(String key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(key, value);
  }

  static Future setBool(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setBool(key, value);
  }

  static Future setInt(String key, int value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setInt(key, value);
  }

  ///<<<==========================Remove Value==================================>

  static Future remove(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove(key);
  }
}