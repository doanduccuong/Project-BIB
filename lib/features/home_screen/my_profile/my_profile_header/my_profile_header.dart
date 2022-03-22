import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/text_bold.dart';
import '../../../../components/text_normal.dart';
import '../../../../configs/images.dart';

class HeaderMyProfile extends StatelessWidget {
  const HeaderMyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBackGroundColor,
      height: 174,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SvgPicture.asset(AppImage.BIBImage),
          Positioned(
            top: 60,
            child: Container(
              width: MediaQuery.of(context).size.width*0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.menu,color: AppColors.textColor,),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  ),
                  Container(
                    height: 22.9,
                    width: 110,
                    child: SvgPicture.asset(
                      AppImage.logoHorColorImage,
                    ),
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: AppColors.textColor,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 18,
            child: Row(
              children: [
                SizedBox(
                  width: 21,
                ),
                CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 21,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBold(
                      title: 'John Doe!',
                      size: 24,
                    ),
                    TextNormal(
                      title: 'Hello',
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
