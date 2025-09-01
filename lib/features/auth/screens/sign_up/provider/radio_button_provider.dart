import 'package:flutter/material.dart';

class RadioButtonProvider extends ChangeNotifier {
  String selectedValue = '';

  void assignValue(String? value) {
    if(value!=null) selectedValue = value;
    notifyListeners();
  }
}