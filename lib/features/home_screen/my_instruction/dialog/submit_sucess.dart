import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class SubmitSucess extends StatelessWidget {
  const SubmitSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.textColor,
          borderRadius: BorderRadius.circular(5)
        ),
        height: 184,
        width: 331,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBold(
              title: 'Thank You!',
              size: 16,
              colors: AppColors.textPrimaryColor,
            ),
            TextNormal(
              title:
                  ' Your instruction is now being processed.We will send you notification if there is any update.',
              size: 14,
              colors: AppColors.textSecondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
