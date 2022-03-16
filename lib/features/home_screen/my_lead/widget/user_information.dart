import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  final double? height;
  final  Function()? callBack;
  final double? width;
   UserInformation({Key? key,this.callBack,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 20,
          top: 20,
        ),
        height: height??99,
        width: width??335,
        decoration: BoxDecoration(
          color: AppColors.textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 17.5),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBold(
                      title: 'John Doe',
                      size: 14,
                      colors: AppColors.textPrimaryColor,
                    ),
                    TextBold(
                      title: '0978 765 4321',
                      size: 14,
                      colors: AppColors.textSubduedColor,
                    ),
                    TextBold(
                      title: 'example@example.com',
                      size: 14,
                      colors: AppColors.textSubduedColor,
                    ),
                  ],
                ),
                Spacer(),
                Button(
                  title: 'Initiate',
                  height: 18,
                  width: 45,
                  textSize: 12,
                  backGroundColor: Color(0xFFFFF1E5),
                  textColor: Color(0xFFFF7800),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
