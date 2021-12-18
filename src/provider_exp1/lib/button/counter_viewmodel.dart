import 'package:flutter/cupertino.dart';

class CounterViewmodel extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  decrementValue() {
    _value--;
    print(_value);
    notifyListeners();
  }

  incrementValue() {
    _value++;
    print(_value);
    notifyListeners();
  }
}
