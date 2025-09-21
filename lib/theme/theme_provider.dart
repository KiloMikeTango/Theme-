import 'package:flutter/material.dart';
import 'package:theme/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themedata(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themedata = darkMode;
      print('Dark mode');
    } else {
      themedata = lightMode;
      print('Light mode');
    }
  }
}
