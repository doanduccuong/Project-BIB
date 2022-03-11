import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color startGradient = Color(0xFF2C2F98);
  static const Color endGradient = Color(0xFF050BCA);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color textColorGrey2 = Color(0xFF6A6B78);
  static const Color aPrimaryColor = Color(0xFFABB4BD);
  static const Color bPrimaryColor = Color(0xFFD8D8D8);
  static const Color forgotPasswordColor = Color(0xFFFF8600);
  static const Color fillColor = Color(0xFFE9EAF4);
  static const Color cPrimaryColor = Color(0xFFFF8600);
  static const Color unFocusOTPColor = Color(0xFFABB4BD);
  static const Color otpInputColor = Color(0xFF1D2029);
  static const Color innerBorder = Color(0xFFBFC0E0);
  static const Color dPrimaryColor = Color(0xFFF9F9FC);
  static const Color ePrimaryColor = Color(0xFFFF7800);
  static const Color fPrimaryColor = Color(0xFF0E0C2D);
  static const Color gPrimaryColor=Color(0xFF302AE4);
  static const Gradient gradientStyle1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [AppColors.endGradient, AppColors.startGradient],
  );
  static const Gradient gradientStyle2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [AppColors.bPrimaryColor, AppColors.gPrimaryColor],
  );
}
