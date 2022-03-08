import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/cupertino.dart';

Widget unTickBox(){
  return Container(
    height: 14,
    width: 14,
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.bPrimaryColor)
    ),
  );
}