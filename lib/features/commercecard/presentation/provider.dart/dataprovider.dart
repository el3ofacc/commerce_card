import 'dart:ui';

import 'package:flutter/material.dart';

class Dataprovider extends ChangeNotifier {
  String company = 'apple';
  int catagoryindex = 0;
  int index = 0;
  PageController pageController = PageController();
  increaseindex() {
    index++;
    pageController.animateToPage(index,
        duration: Duration(microseconds: 300), curve: Curves.easeIn);
    notifyListeners();
  }

  changepage(int newindex) {
    pageController.animateToPage(newindex,
        duration: Duration(microseconds: 300), curve: Curves.easeIn);
    index = newindex;
    notifyListeners();
  }

  changecatagoryindex(int newindex) {
    catagoryindex = newindex;
    notifyListeners();
  }

  changecompany(String newcompany) {
    company = newcompany;
    notifyListeners();
  }
}
