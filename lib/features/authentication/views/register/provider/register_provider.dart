import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {


  //full name controller
  TextEditingController _fullNameController = TextEditingController();
  get fullNameController=>_fullNameController;
  bool validateFullName=false;
  // void checkValidateFullName(String fullName){
  //   if(fullName==''){
  //     validateFullName=false;
  //     notifyListeners();
  //   }else{
  //     validateFullName=true;
  //     notifyListeners();
  //   }
  // }

  //email controller
  TextEditingController _emailController = TextEditingController();
  get emailController=>_emailController;
  bool validateEmail=false;
  // void checkValidateEmail(String value){
  //   if(value.contains('@')&&value.contains('.com')){
  //     validateEmail=true;
  //     notifyListeners();
  //   }
  //   else
  //     {
  //       validateEmail=false;
  //       notifyListeners();
  //     }
  // }

  //mobile number controller
  TextEditingController _mobileNumberController = TextEditingController();
  get mobileNumberController=>_mobileNumberController;

//password controller
  TextEditingController _passwordController = TextEditingController();
  get passwordController=>_passwordController;

//confirm password controller
  TextEditingController _confirmPasswordController = TextEditingController();
  get confirmPasswordController=>_confirmPasswordController;



  // dispose all the controller
  void disposeController(){
    _fullNameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _companyController.dispose();

  }

  //company controller
  TextEditingController _companyController = TextEditingController();
  get companyController=>_companyController;


  //role selected
String _roleSelected='';
String get roleSelected=>_roleSelected;
void selectRole(String role){
  _roleSelected=role;
  notifyListeners();
}

//check password the same
  bool _isTheSame=false;
  bool get isTheSame=>_isTheSame;


  void checkTheSame(){
    print("The new password is "+passwordController.text);
    print("The confirm password is "+confirmPasswordController.text);



    if(passwordController.text==confirmPasswordController.text){
      print("the same");
      _isTheSame=true;
      notifyListeners();
    }
    else {
      _isTheSame=false;
      print("not the same");
      notifyListeners();
    }
  }

}
