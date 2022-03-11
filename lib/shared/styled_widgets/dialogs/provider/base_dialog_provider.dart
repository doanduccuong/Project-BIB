import 'package:flutter/cupertino.dart';

class BaseDialogProvider extends ChangeNotifier {
  //email controller
  TextEditingController _emailIDController = TextEditingController();
  get emailIDController => _emailIDController;

  // password controller

  TextEditingController _passwordController = TextEditingController();
  get passwordController => _passwordController;

//dispose controller
  void disposeController() {
    _passwordController.dispose();
    _emailIDController.dispose();
  }


  //add listener to controller


}
