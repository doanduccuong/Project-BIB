import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.only(top: 125, left: 25),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 195,
      width: 335,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 17.5,
                backgroundColor: AppColors.textColorGrey2,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold(
                    title: 'Syailendra Dana Kas',
                    size: 12,
                    colors: Color(0xFF2F323D),
                  ),
                  TextNormal(
                    title: 'Product name',
                    size: 12,
                    colors: Color(0xFF2F323D),
                  ),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextNormal(
                  title: 'Amount (final)',
                  colors: AppColors.textSubduedColor,
                  size: 12),
              TextBold(
                title: 'Rp 10.000',
                colors: AppColors.textPrimaryColor,
                size: 12,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextNormal(
                  title: 'Unit (final)',
                  colors: AppColors.textSubduedColor,
                  size: 12),
              TextBold(
                title: '7,865,222',
                colors: AppColors.textPrimaryColor,
                size: 12,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextNormal(
                  title: 'Unitization date / NAV date',
                  colors: AppColors.textSubduedColor,
                  size: 12),
              TextBold(
                title: '24 Feb 2022',
                colors: AppColors.textPrimaryColor,
                size: 12,
              )
            ],
          ),
        ],
      ),
    );
  }
}
