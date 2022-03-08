import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget tickBox(){
  return Container(
    height: 14,
    width: 14,
    child:  Icon(Icons.done,color: AppColors.startGradient,size: 12,),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.startGradient)
    ),

  );
}