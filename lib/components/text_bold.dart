import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextBold extends StatelessWidget {
  final String title;
  final Color? colors;
  final double size;
  final double? height;
  final bool? isCenter;

  const TextBold(
      {Key? key,
        required this.title,
        this.colors,
        required this.size,
         this.height,
        this.isCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: colors??AppColors.textColor,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontFamily: 'Poppins',
        fontSize: size,
        height: height??1.5,
      ),
    );
  }
}