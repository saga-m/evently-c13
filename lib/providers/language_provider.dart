import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier{
  late String currentLocale ;
  static const String localeKey = "locale";
  static const String fallBackLocale = "en";

  LanguageProvider(String? defaultLocale){
    currentLocale = defaultLocale ?? fallBackLocale;
  }

  void changeLocale(String newLocale){
    currentLocale = newLocale;
    saveNewLocaleToSharePreferences(newLocale);
    notifyListeners();
  }
}

void saveNewLocaleToSharePreferences(String newLocale) async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString(LanguageProvider.localeKey, newLocale);
}