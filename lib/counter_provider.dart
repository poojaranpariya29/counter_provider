import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void add() {
    count++;
    notifyListeners();
  }

  void addvalue(int val) {
    count = val;
    notifyListeners();
  }
}
