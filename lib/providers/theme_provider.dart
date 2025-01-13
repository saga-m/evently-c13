import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.dark;
  static const String isLightModeKey = "theme";

  ThemeProvider(bool isLightTheme){
    currentTheme = isLightTheme? ThemeMode.light : ThemeMode.dark;
  }

  void changeTheme(ThemeMode newTheme){
    currentTheme = newTheme;
    saveNewTheme(newTheme);
    notifyListeners();
  }

  void saveNewTheme(ThemeMode newTheme)async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(isLightModeKey,
        newTheme == ThemeMode.light);
  }
}