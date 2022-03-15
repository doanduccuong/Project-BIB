import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/widget/detail_card.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_investor/edit_investor.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      flexibleSpace: Stack(
        children: [
          DetailCard(),
          SvgPicture.asset(AppImage.BIBBar1Image,alignment: Alignment.topRight,)
        ],
      ),
      backGroundColor: Color(0xFFF5F5FC),
      padding: EdgeInsets.only(right: 0),
      paddingTitle: EdgeInsets.only(bottom: 200),
      toolbarHeight: 316,
      title: 'Transaction Detail',
      bodyWidget: Column(
        children: [
          SizedBox(height: 9,),
          InkWell(
            onTap: ()=> Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditInvestor(),
              ),
            ),
            child: Container(
              color: AppColors.textColor,
              padding: EdgeInsets.only(left: 20,top: 32,right: 21,bottom: 25),
              height: 257,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextNormal(title: 'Investment Manager',size: 12,colors: AppColors.textSubduedColor,),
                     TextBold(title: 'Kevin', size: 12,colors: AppColors.textPrimaryColor,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextNormal(title: 'NAV used',size: 12,colors: AppColors.textSubduedColor,),
                     TextBold(title: 'N/A', size: 12,colors: AppColors.textPrimaryColor,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextNormal(title: 'Fee (%)',size: 12,colors: AppColors.textSubduedColor,),
                     TextBold(title: '20', size: 12,colors: AppColors.textPrimaryColor,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextNormal(title: 'Fee (final)',size: 12,colors: AppColors.textSubduedColor,),
                     TextBold(title: '30', size: 12,colors: AppColors.textPrimaryColor,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextNormal(title: 'Transaction status',size: 12,colors: AppColors.textSubduedColor,),
                     TextBold(title: 'invoiced ', size: 12,colors: AppColors.textPrimaryColor,)
                   ],
                 ),
               ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
