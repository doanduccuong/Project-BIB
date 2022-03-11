import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  String title;
  double? height;
  double? width;
  ListContainer({
    Key? key,
    required this.title,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,left: 20),
      child: TextBold(title: title,size: 16,colors: AppColors.fPrimaryColor,),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
