import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  Future createCache(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("password", password);
  }

  Future readCache(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var cache = prefs.getString("password");
    return cache;
  }

  Future removeCache(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("password");
  }
}
