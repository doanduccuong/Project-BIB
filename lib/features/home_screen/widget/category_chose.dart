import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryChose extends StatelessWidget {
  String image;
  String title;
  Function()? callBack;
  CategoryChose({
    Key? key,
    required this.title,
    required this.image,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 2,color: AppColors.fillColor))
        ),
        height: 126,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(height: 11.79),
            TextNormal(title: title,fontWeight: FontWeight.w500,size: 16,colors: AppColors.fPrimaryColor,)
          ],
        ),
      ),
    );
  }
}
