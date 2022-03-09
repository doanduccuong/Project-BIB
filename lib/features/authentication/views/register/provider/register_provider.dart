import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey=>_formKey;

  //full name controller
  TextEditingController _fullNameController = TextEditingController();
  get fullNameController=>_fullNameController;
  bool validateFullName=false;
  void checkValidateFullName(String fullName){
    if(fullName==''){
      validateFullName=false;
    }else{
      validateFullName=true;
    }
  }

  //email controller
  TextEditingController _emailController = TextEditingController();
  get emailController=>_emailController;

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

}
