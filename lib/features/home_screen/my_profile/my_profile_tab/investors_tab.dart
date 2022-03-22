import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/create_new_investor.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/list_of_investors/list_of_investors.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/list_of_investors_approved/list_of_investors_approved.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../my_profile_header/my_profile_header.dart';

class InvestorTab extends StatelessWidget {
  const InvestorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            HeaderMyProfile(),
            SizedBox(height: 20,),
            Button(
              callBack: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreateNewInvestor(),
                ),
              ),
              title: '+ Add new investor',
              backGroundColor: AppColors.textColor,
              textColor: AppColors.mainBackGroundColor,
              textSize: 14,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Color(0xFFF0F6),
              height: 700,
              child: Column(
                children: [ListOfInvestorsApproved(), ListOfInvestors()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
