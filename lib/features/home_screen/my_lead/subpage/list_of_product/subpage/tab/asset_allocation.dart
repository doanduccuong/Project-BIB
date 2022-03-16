import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
class AssetAllocation extends StatelessWidget {
  const AssetAllocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 22),
          decoration: BoxDecoration(
            color: AppColors.fillColor,
            borderRadius: BorderRadius.circular(4)
          ),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          height: 81,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextNormal(title: 'Total managed fund',size: 12,colors: AppColors.textSubduedColor,),
              TextBold(title: 'Rp2.563.628.051.235',size: 12,colors: AppColors.textPrimaryColor,),
            ],
          ),
        ),
        Container(

        ),
        TextNormal(title: 'Share',size: 12,colors: Color(0xFF2F323D),),
        SizedBox(height: 8,),
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: AppColors.fillColor,
            borderRadius: BorderRadius.circular(3)
          ),
          width: 298,
        ),
        SizedBox(height: 20,),
        TextNormal(title: 'Money market',size: 12,colors: Color(0xFF2F323D),),
        SizedBox(height: 8,),
        Container(
          height: 8,
          decoration: BoxDecoration(
              color: AppColors.fillColor,
              borderRadius: BorderRadius.circular(3)
          ),
          width: 298,
        ),
        SizedBox(height: 20,),
        Divider(),
        SizedBox(height: 20,),
        Container(
          height: 109,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextBold(title: 'Top holdings', size: 14,colors: AppColors.textPrimaryColor,),
              TextNormal(title: 'Top holdings', size: 14,colors: Color(0xFF2F323D),),
              TextNormal(title: 'Top holdings', size: 14,colors: Color(0xFF2F323D),),
              TextNormal(title: 'Top holdings', size: 14,colors: Color(0xFF2F323D),),
            ],
          ),
        )
      ],
    );
  }
}
