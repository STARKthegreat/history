import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  int number;

  HistoryProvider({
    this.number = 0,
  });

  void changeNumber(int newNo) {
    number = newNo;
    notifyListeners();
  }

  //HistoryProvider({
  //this._dropDownList = SizedBox();
  //});

}
