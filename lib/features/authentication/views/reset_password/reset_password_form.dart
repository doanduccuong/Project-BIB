import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/authentication/views/reset_password/widget/confirm_password.dart';

import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 27,
            ),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.startGradient,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 34,
            ),
            TextBold(
              title: 'Reset Password',
              size: 24,
              colors: AppColors.startGradient,
            ),
            TextNormal(
              title: 'Please enter your new password and confirm the password.',
              size: 14,
              colors: AppColors.textColorGrey2,
            ),
            SizedBox(
              height: 63,
            ),
            // confirm password field
            const ConfirmPassword()
          ],
        ),
      ),
    );
  }
}
