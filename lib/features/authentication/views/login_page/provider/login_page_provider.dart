import 'package:flutter/cupertino.dart';

class LogInScreenProvider with ChangeNotifier {
  bool _isTick = false;
  bool get isTick => _isTick;

  // remember toggle box
  void toggleTick() {
    _isTick = !_isTick;
    notifyListeners();
  }



  //email valid check
  bool _isValidEmail = false;
  bool get isValidEmail => _isValidEmail;

  void emailValidator(String value) {
    if (value.contains("@") && value.contains(".com")) {
      _isValidEmail = true;
      notifyListeners();
    } else {
      _isValidEmail = false;
      notifyListeners();
    }
  }

  // password valid check
  bool _isValidPassWord=false;
  bool get isValidPassword=>_isValidPassWord;


  void passWordValidator(String value){
    if (value.length < 6){
      _isValidPassWord=false;
      notifyListeners();
    }
    else {
      _isValidPassWord=true;
      notifyListeners();
    }
  }


  //hint pass
  bool _obscureTextValue=true;
  get obscureTextValue=>_obscureTextValue;
  void toggleObscure(){
    _obscureTextValue=!_obscureTextValue;
    notifyListeners();
  }

  //complete fill two text form field and change the color of button
  bool _isFill=false;
  bool get isFill=>_isFill;

}