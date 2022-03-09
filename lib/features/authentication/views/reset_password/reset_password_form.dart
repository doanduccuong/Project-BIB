import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';


import 'package:base_flutter/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ResetPasswordFormState();
  }
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 22.w),
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.h,),
              const Icon(
                Icons.arrow_back,
                color: AppColors.startGradient,
              ),
              SizedBox(height: 34.h,),
              TextBold(title: 'Reset Password', size: 24.sp,colors: AppColors.startGradient,),
              TextNormal(title: 'Please enter your new password and confirmthe password.',size: 14.sp,colors: AppColors.textColorGrey2,)
            ],
          ),
        ),
      ),
    );
  }
}
