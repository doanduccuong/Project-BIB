import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
class SubmitCacel extends StatelessWidget {
  const SubmitCacel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        height: 232,
        width: 331,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBold(
              title: 'Sory!',
              size: 16,
              colors: AppColors.textPrimaryColor,
            ),
            TextNormal(
              title:
              'Are you sure you want to cancel your instruction? All information is not saved. ',
              size: 14,
              colors: AppColors.textSecondaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(title: 'No',width: 142,textColor: AppColors.mainBackGroundColor,borderColor: AppColors.mainBackGroundColor,),
                Button(title: 'Yes',width: 142,textColor: AppColors.textColor,backGroundColor: AppColors.mainBackGroundColor,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
