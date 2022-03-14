import 'dart:async';


import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:flutter/material.dart';


class TimerController{
   late Timer _timer;
   void initializeTimer(BuildContext context) {
     print("start timer");
     _timer = Timer(const Duration(seconds: 10), _logOutUser(context));
   }
    _logOutUser(BuildContext context) {
     print("the user has been logout");
     _timer.cancel();
     Navigator.of(context).push(
       MaterialPageRoute(
         builder: (context) => LogInPage(),
       ),
     );
   }
   void cancelTimer(){
     _timer.cancel();
   }
   void handleUserInteraction(BuildContext context) {
     print("Use had touch to the screen");
     _timer.cancel();
     _timer = Timer(const Duration(seconds: 10), _logOutUser(context));
     initializeTimer(context);
   }
}