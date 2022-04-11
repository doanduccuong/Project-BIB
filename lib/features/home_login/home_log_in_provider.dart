import 'package:base_flutter/shared/extensions/regex_password.dart';
import 'package:flutter/material.dart';

class HomeLoginProvider extends ChangeNotifier{
  bool isValidPassword=true;
  bool isShowOverLay=false;
  void  checkValidate(String value){
    if(value.validatePassword(value)==null){
      isValidPassword=true;
    }
    else{
      isValidPassword=false;
    }
    notifyListeners();
  }
  void toggleShowOverLay(){
    isShowOverLay=!isShowOverLay;
    notifyListeners();
  }
}