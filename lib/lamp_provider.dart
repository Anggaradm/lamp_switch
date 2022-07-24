import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LampProvider with ChangeNotifier {
  bool _isOn = true;

  bool get isOn => _isOn;

  set isOn(bool newValue) {
    _isOn = newValue;
    notifyListeners();
  }

  get getIcon => _isOn ? Icons.sunny : Icons.night_shelter;
  get getColor => _isOn ? Colors.amber : Colors.grey;
  get getOnButtonColor =>
      _isOn ? Color.fromARGB(255, 220, 220, 220) : Colors.black;
  get getOffButtonColor =>
      _isOn ? Colors.black : Color.fromARGB(255, 220, 220, 220);
  get getTextInfo => _isOn ? 'Menyala' : 'Mati';
}
