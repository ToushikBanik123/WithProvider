import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 10;
  int get count=> _count;

  void CountPlus(){
    _count++;
    print(_count);
    notifyListeners();
  }
}