import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool _isLoggedIn = false;

// Getters
  bool get isUserLoggedIn => _isLoggedIn;

// Setters
  void updateLoginStatus() {
    _isLoggedIn = !_isLoggedIn;
    notifyListeners();
  }
}
