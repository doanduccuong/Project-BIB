import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//

//global key





class ResetPasswordProvider extends ChangeNotifier {










  //variable to save the value of new password and confirm new password
  String newPassword='';
  String confirmNewPassword='';
  bool _isTheSame=false;
  bool get isTheSame=>_isTheSame;


  void checkTheSame(password,confirmPassword){
    print("The new password is "+password);
    print("The confirm password is "+confirmPassword);
    newPassword=password;
    confirmNewPassword=confirmPassword;

    if(newPassword==confirmNewPassword){
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
  // void notify(context){
  //   if (_formKey.currentState?.validate()==true) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Password updated')),
  //     );
  //   }
  // }




  // new password obscure state
  bool _obscurePassword = true;
  get obscurePassword => _obscurePassword;
  void toggleObscurePassWord() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  // confirm new password obscure state
  bool _obscureConfirmPassWord = true;
  get obscureConfirmPassWord => _obscureConfirmPassWord;
  void toggleObscureNewPassWord() {
    _obscureConfirmPassWord = !_obscureConfirmPassWord;
    notifyListeners();
  }


}
