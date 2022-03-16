import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_lead/subpage/list_of_product/subpage/tab/widget/graph_field.dart';
import 'package:flutter/material.dart';
class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            TextNormal(title: 'Return 3Y',colors: AppColors.textSubduedColor,size: 10,),
            TextBold(title: 'Return 3Y',colors: Color(0xFF0AC272),size: 10,),

          ],
        ),
        VerticalDivider(endIndent: 475,),
        Column(
          children: [
            Container(height:24,width: 63,child: TextNormal(title: 'Mutual fund asset class',colors: AppColors.textSubduedColor,size: 10,)),
            TextBold(title: 'Return 3Y',colors: AppColors.textSecondaryColor,size: 10,),
          ],
        ),
        VerticalDivider(endIndent: 475,),
        Column(
          children: [
            Container(height:24,width: 63,child: TextNormal(title: 'Mutual fund asset class',colors: AppColors.textSubduedColor,size: 10,)),
            TextBold(title: 'Return 3Y',colors: AppColors.textSecondaryColor,size: 10,),
          ],
        ),
        VerticalDivider(endIndent: 475,),
        Column(
          children: [
            Container(height:24,width: 63,child: TextNormal(title: 'Mutual fund asset class',colors: AppColors.textSubduedColor,size: 10,)),
            TextBold(title: 'Return 3Y',colors: AppColors.textSecondaryColor,size: 10,),
          ],
        ),

      ],
    ),
        GraphField()
      ],
    );
  }
}
