import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          TextNormal(
            title: 'Update 9 Mar 2022',
            size: 10,
            colors: AppColors.textSubduedColor,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            height: 136,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextNormal(
                      title: 'Investment manager',
                      colors: AppColors.textSubduedColor,
                      size: 12,
                    ),
                    TextNormal(
                      title: 'Custodian Bank',
                      colors: AppColors.textSubduedColor,
                      size: 12,
                    ),
                    TextNormal(
                      title: 'Launch Date',
                      colors: AppColors.textSubduedColor,
                      size: 12,
                    ),
                    TextNormal(
                      title: ' Minimum subscription',
                      colors: AppColors.textSubduedColor,
                      size: 12,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextBold(
                      title: 'Kevin',
                      size: 12,
                      colors: AppColors.textPrimaryColor,
                    ),
                    TextBold(
                      title: 'HSBC Indonesia',
                      size: 12,
                      colors: AppColors.textPrimaryColor,
                    ),
                    TextBold(
                      title: '1 Now 2007',
                      size: 12,
                      colors: AppColors.textPrimaryColor,
                    ),
                    TextBold(
                      title: 'Rp100.000',
                      size: 12,
                      colors: AppColors.textPrimaryColor,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 27,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                backGroundColor: Colors.transparent,
                borderColor: AppColors.mediumBorderColor,
                height: 36,
                width: 172,
                title: 'title',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.file_download,
                      color: AppColors.textLinkColor,
                    ),
                    TextBold(
                      title: 'Prospectus File',
                      size: 12,
                      colors: AppColors.textLinkColor,
                    )
                  ],
                ),
              ),
              Button(
                backGroundColor: Colors.transparent,
                borderColor: AppColors.mediumBorderColor,
                height: 36,
                width: 172,
                title: 'title',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.file_download,
                      color: AppColors.textLinkColor,
                    ),
                    TextBold(
                      title: 'Fund fact sheet File',
                      size: 12,
                      colors: AppColors.textLinkColor,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
