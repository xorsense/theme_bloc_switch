import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  late SharedPreferences sharedPreferences;
  Preferences();

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
