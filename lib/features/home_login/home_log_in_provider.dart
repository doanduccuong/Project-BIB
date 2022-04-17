import 'package:flutter/material.dart';

class HomeLoginProvider extends ChangeNotifier {
  HomeLoginProvider();

   List<String> cities=["Ba Ria Vung Tau", "Ho Chi Minh", "Ha Noi"];
  List<String> province = [];
  List<String> district = [];
  bool isShowCityList = false;

  void setOnSearchCity(List<String> onSearchCity) {
    cities = onSearchCity;
    notifyListeners();
  }

  void toggleShowCityList() {
    isShowCityList = !isShowCityList;
    notifyListeners();
  }
}
