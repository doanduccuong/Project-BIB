import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:base_flutter/widget/navigator_back_arrrow.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: EdgeInsets.only(right: 342),
              child: NavigatorBackArrow(),
            ),
            SizedBox(
              height: 53,
            ),
            Image.asset(AppImage.group220Image),
            SizedBox(
              height: 25.47,
            ),
            TextBold(
              title: 'Congratulation!',
              size: 20,
              colors: AppColors.startGradient,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              height: 88,
              width: 290,
              child: TextNormal(
                title:
                    'Congratulations, you have successfully registered. Please check your email to activate your account',
                size: 14,
                colors: AppColors.aPrimaryColor,
                isCenter: true,
              ),
            ),
            Button(
              title: 'Ok',
              textColor: AppColors.textColor,
              backGroundColor: AppColors.startGradient,
              height: 46,
              width: 243,
            )
          ],
        ),
      ),
    );
  }
}
