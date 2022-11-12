import 'dart:html';

import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  Future createCache(String password) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("password", password);
  }

  Future readCache(String password) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var cache = _prefs.getString("password");
    return cache;
  }

  Future removeCache(String password) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove("password");
  }
}
