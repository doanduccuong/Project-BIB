import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class ProductStatus extends StatelessWidget {
  const ProductStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20,right: 20),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFE4E7F1),
        ),
      ),
      height: 143,
      width: 335,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35 / 2,
                backgroundColor: Color(0xFFC4C4C4),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold(
                    title: 'Product1',
                    size: 12,
                    colors: Color(0xFF2F323D),
                  ),
                  TextNormal(
                    size: 12,
                    title: 'Investor name',
                    colors: Color(0xFF2F323D),
                  )
                ],
              ),
              Spacer(),
              Button(
                title: 'Status',
                height: 18,
                width: 42,
                backGroundColor: AppColors.fillColor,
                textColor: AppColors.textColorGrey2,
                textSize: 10,
              )
            ],
          ),
          SizedBox(height: 15,),
          Divider(),
          Row(
            children: [
              TextNormal(title: 'Transaction date',size: 12,colors: AppColors.textSubduedColor,),
              SizedBox(width: 86,),
              TextNormal(title: 'Amount',size: 12,colors: AppColors.textSubduedColor,)
            ],
          ),
          Row(
            children: [
              TextBold(title: '24 Feb 2022',size: 12,colors: Colors.black,),
              SizedBox(width: 108,),
              TextBold(title: 'Rp 10.000',size: 12,colors: Colors.black,)
            ],
          )
        ],
      ),
    );
  }
}
