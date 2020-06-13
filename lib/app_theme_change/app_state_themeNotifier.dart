import 'package:flutter/material.dart';

class AppThemeNotifier extends ChangeNotifier {
  bool isDark = false;

  void changeTheme(bool isDarkMode) {
    this.isDark = isDarkMode;
    notifyListeners();
  }
}
