import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_investers/tab/widget/product_status.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class SubscriptionTab extends StatelessWidget {
  const SubscriptionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Button(
                title: 'Semua',
                backGroundColor: Colors.transparent,
                borderColor: AppColors.mainBackGroundColor,
                textSize: 12,
                textColor: AppColors.mainBackGroundColor,
                height: 26,
                width: 63,
              ),
              SizedBox(width: 10,),
              Button(
                title: 'Menunggu Pembayaran',
                backGroundColor: Color(0xFFE9EAF9),
                textSize: 12,
                textColor: Color(0xFF2F323D),
                height: 26,
                width: 167,
              ),
            ],
          ),
          SizedBox(height: 20,),
          ProductStatus()
        ],
      ),
    );
  }
}
