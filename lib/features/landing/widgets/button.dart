import 'package:flutter/material.dart';

import '../../../components/text_bold.dart';
import '../../../configs/colors.dart';

class Button extends StatelessWidget {
  Color? backGroundColor;
  double? width;
  double? height;
  double? textSize;
  Color? textColor;
  String title;
  Function()? callBack;
  Button(
      {Key? key,
      this.backGroundColor,
      this.height,
      this.width,
      this.textSize,
      this.textColor,
        this.callBack,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: callBack,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 46,
        width: width ?? 335,
        decoration: BoxDecoration(
            color: backGroundColor ?? AppColors.textColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.textColor)),
        child: TextBold(
          title: title,
          size: textSize ?? 14,
          colors: textColor ?? AppColors.startGradient,
        ),
      ),
    );
  }
}
