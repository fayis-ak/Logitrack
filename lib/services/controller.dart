  
import 'package:flutter/cupertino.dart';

class Controller with ChangeNotifier {
  int selectedindex = 0;
  changeIndex(value) {
    selectedindex = value;
    notifyListeners();
  }

  bool _isSelected = false;
  bool get isSelected => _isSelected;
  tickconform(bool value) {
    _isSelected = value;
    notifyListeners();
  }
}
