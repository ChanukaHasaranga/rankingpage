import 'package:flutter/material.dart';

class fillcount with ChangeNotifier {
  int _fillCount = 0;
    int _fetchedMinutes = 0;
    int _want=0;


  int get fillCount => _fillCount;
  int get fetchedMinutes => _fetchedMinutes;
  int get want => _want;


  void updateFillCount(int count) {
    _fillCount = count;
    notifyListeners();
  }
  void updateFetchedMinutes(int minutes) {
    _fetchedMinutes = minutes;
    notifyListeners();
  }  
    void updatewantcount(int want) {
    _want = want;
    notifyListeners();
  }


}
