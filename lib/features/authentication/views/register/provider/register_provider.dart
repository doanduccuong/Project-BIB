import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  //role selected
  String _roleSelected = '';
  String get roleSelected => _roleSelected;
  void selectRole(String role) {
    _roleSelected = role;
    notifyListeners();
  }

  //Company selected
  String _companySelected='';
  String get companySelected=>_companySelected;
  void selectCompany(String company){
    _companySelected=company;
    notifyListeners();
  }

//check password the same
  bool _isTheSame = true;
  bool get isTheSame => _isTheSame;

  void checkTheSame(String password,String confirmPassword) {
    print("The new password is " + password);
    print("The confirm password is " + confirmPassword);

    if (password == confirmPassword&&password!="") {
      print("the same");
      _isTheSame = true;
      notifyListeners();
    } else {
      _isTheSame = false;
      print("not the same");
      notifyListeners();
    }
  }

  //error phone number
  bool _isValidatePhoneNumber = true;
  get isValidatePhoneNumber => _isValidatePhoneNumber;
  void checkValidatePhoneNumber(String mobileNumber) {
    if (mobileNumber.length != 10) {
      _isValidatePhoneNumber = false;
      notifyListeners();
    } else {
      _isValidatePhoneNumber = true;
      notifyListeners();
    }
  }
}
