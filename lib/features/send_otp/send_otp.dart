import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/forgot_password/otp_handler/ottp_handler.dart';
import 'package:flutter/material.dart';

class SendOTP extends StatelessWidget {
  const SendOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 22, top: 27),
        child: Scaffold(
          backgroundColor: AppColors.textColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.startGradient,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 34,
              ),
              TextBold(
                title: 'Verification',
                size: 24,
                colors: AppColors.startGradient,
              ),
              Container(
                height: 93,
                width: 332,
                child: RichText(
                  text: TextSpan(
                      text: 'We sent you One Time Code(OTP) via phone number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(
                          text: ' +63xxxx',
                          style: TextStyle(
                            color: AppColors.cPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 84,
              ),
              const OTPHandler(),
            ],
           ),
        ),
      ),
    );
  }
}
