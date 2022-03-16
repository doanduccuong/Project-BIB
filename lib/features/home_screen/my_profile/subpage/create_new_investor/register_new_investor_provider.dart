import 'package:flutter/cupertino.dart';

class RegisterNewInvestorProvider extends ChangeNotifier{
  int _choiceIndex=0;
  int get choiceIndex=>_choiceIndex;
  void setChoiceIndex(int index){
    _choiceIndex=index;
    notifyListeners();
  }
}