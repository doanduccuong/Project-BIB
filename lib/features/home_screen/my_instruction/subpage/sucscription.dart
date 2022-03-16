import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_instruction/dialog/submit_cancel.dart';
import 'package:base_flutter/features/home_screen/my_instruction/dialog/submit_sucess.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      backGroundColor: AppColors.secondBackGroundColor,
      title: 'Subscription Instruction',
      bodyWidget: Column(
        children: [
          Spacer(),
          Button(
            callBack:()=>showDialog(context: context, builder: (context)=>SubmitCacel()),
            title: 'Submit Instruction',
            textColor: AppColors.textColor,
            backGroundColor: AppColors.mainBackGroundColor,
            height: 46,
          )
        ],
      ),
    );
  }
}
