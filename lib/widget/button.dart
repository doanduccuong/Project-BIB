import 'package:flutter/material.dart';

import '../../../components/text_bold.dart';
import '../../../configs/colors.dart';

class Button extends StatelessWidget {
  final Color? backGroundColor;
  final double? width;
  final double? height;
  final double? textSize;
  final Color? textColor;
  final Color? borderColor;
  final String title;
  final bool? borderOnly;
  final Function()? callBack;
  final Widget? child;
  Button({
    Key? key,
    this.backGroundColor,
    this.height,
    this.width,
    this.textSize,
    this.textColor,
    required this.title,
    this.callBack,
    this.borderColor,
    this.borderOnly = false,
    this.child,
  }) : super(key: key);

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
            borderRadius: borderOnly == false
                ? BorderRadius.circular(8)
                : BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
            border: Border.all(color: borderColor ?? Colors.transparent)
            // border: Border.all(color: borderColor??Colors.transparent)
            ),
        child: child ??
            TextBold(
              title: title,
              size: textSize ?? 14,
              colors: textColor ?? AppColors.startGradient,
            ),
      ),
    );
  }
}
