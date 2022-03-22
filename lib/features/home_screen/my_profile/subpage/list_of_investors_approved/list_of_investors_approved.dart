import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';

import 'package:base_flutter/features/home_screen/my_profile/widget/customer_information.dart';

import 'package:flutter/material.dart';


class ListOfInvestorsApproved extends StatelessWidget {
  const ListOfInvestorsApproved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextBold(
              title: 'List of investors approved',
              size: 14,
              colors: AppColors.textPrimaryColor,
            ),
            TextNormal(
              title: 'View all',
              size: 14,
              colors: AppColors.textLinkColor,
            ),

          ],
        ),
        SizedBox(height: 25,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
          decoration: BoxDecoration(
            color: AppColors.textColor,
            borderRadius: BorderRadius.circular(4)
          ),
          height: 229,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomerInformation(),
              Divider(),
              CustomerInformation(),
              Divider(),
              CustomerInformation(),
            ],
          )
        ),
      ],
    );
  }
}
