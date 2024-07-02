import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui/theme/text_theme.dart';
import '../ui/theme/theme.dart';
import '../utils/constants.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData();
  TextTheme _textTheme = const TextTheme();
  ThemeData _darkTheme = ThemeData();
  ThemeData _lightTheme = ThemeData();

  /*
  Getters
   */
  ThemeData getTheme() => _themeData;

  TextTheme get textTheme => _textTheme;

  /*
  Setters
   */
  void setTextTheme(TextTheme textTheme) {
    _textTheme = textTheme;
    notifyListeners();
  }

  void setDarkTheme(ThemeData theme) {
    _darkTheme = theme;
    notifyListeners();
  }

  void setLightTheme(ThemeData theme) {
    _lightTheme = theme;
    notifyListeners();
  }

  ThemeProvider({required bool isDark, required BuildContext context}) {
    setTextTheme(
        createTextTheme(context, AppData.bodyFont, AppData.displayFont));
    setLightTheme(MaterialTheme(_textTheme).lightMediumContrast());
    _themeData = _lightTheme;
    if (!isDark) {
      _themeData = _lightTheme;
      notifyListeners();
    }
  }

  void toggleThemeMode(BuildContext context) async {
    setTextTheme(
        createTextTheme(context, AppData.bodyFont, AppData.displayFont));
    setDarkTheme(MaterialTheme(_textTheme).darkMediumContrast());
    setLightTheme(MaterialTheme(_textTheme).lightMediumContrast());

    final prefs = await SharedPreferences.getInstance();
    if (_themeData == _darkTheme) {
      _themeData = _lightTheme;
      prefs.setBool('isDark', false);
    } else {
      _themeData = _darkTheme;
      prefs.setBool('isDark', true);
    }
    notifyListeners();
  }
}
