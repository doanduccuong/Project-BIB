import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/my_lead/subpage/update_info.dart';
import 'package:base_flutter/features/home_screen/my_lead/widget/user_information.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeadDetail extends StatelessWidget {
  const LeadDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backGroundColor: AppColors.secondBackGroundColor,
      flexibleSpace: Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 97, left: 20),
              child: UserInformation()),
          SvgPicture.asset(
            AppImage.BIBBar1Image,
            alignment: Alignment.topRight,
          )
        ],
      ),
      toolbarHeight: 207,
      title: 'Lead detail',
      paddingTitle: EdgeInsets.only(bottom: 130),
      bodyWidget: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBold(
                  title: 'Lead size',
                  size: 14,
                  colors: AppColors.textPrimaryColor,
                ),
                InkWell(
                  onTap: ()=>Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpdateInfo(),
                    ),
                  ),
                  child: TextNormal(
                    title: 'Update info',
                    size: 12,
                    colors: Color(0xFF2B4AC7),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            color: AppColors.textColor,
            height: 222,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextNormal(title: 'Product offered',size: 12,colors: AppColors.textSubduedColor,),
                  TextBold(title: 'N/a', size: 12,colors: AppColors.textPrimaryColor,)
                ],
              ),),
            ),
          )
        ],
      ),
    );
  }
}
