import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';





class OTPHandler extends StatelessWidget {
  const OTPHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.only(right: 37, left: 3),
          child: PinCodeTextField(
            pinTheme: PinTheme(
                inactiveColor: AppColors.unFocusOTPColor,
                activeColor: AppColors.startGradient),
            textStyle: const TextStyle(color: AppColors.otpInputColor),
            onChanged: (String value) {},
            length: 4,
            appContext: context,
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Button(
          title: 'Verify',
          textColor: AppColors.textColor,
          backGroundColor: AppColors.startGradient,
        ),
        SizedBox(height: 21,),
        TextNormal(title: 'Didn’t recieve a verification code?',colors: AppColors.aPrimaryColor,size: 14,),
        TextNormal(title: 'Resend your OTP',colors: AppColors.cPrimaryColor,size: 14,)
      ],
    );
  }
}
