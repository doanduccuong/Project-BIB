import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/widget/category_chose.dart';
import 'package:base_flutter/features/home_screen/widget/list_container.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.gradientStyle1),
      child: Scaffold(
        drawerEnableOpenDragGesture: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 22, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 59,
                ),
                Row(
                  children: [
                    MenuIcon(),
                    Spacer(),
                    Container(
                      height: 22.9,
                      width: 110,
                      child: SvgPicture.asset(AppImage.logoHorColorImage),
                    ),
                    SizedBox(
                      width: 56,
                    ),
                    Icon(
                      Icons.search,
                      color: AppColors.textColor,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: AppColors.textColor,
                    )
                  ],
                ),
                TextNormal(
                  title: 'Hello',
                  size: 16,
                ),
                TextBold(
                  title: 'John Doe!',
                  size: 24,
                ),
                Button(
                  title: '+ Create new investor',
                  backGroundColor: Colors.transparent,
                  textColor: AppColors.textColor,
                  textSize: 14,
                  borderColor: AppColors.textColor,
                ),
                ListContainer(
                  title: 'List of investor',
                  width: 335,
                  height: 190,
                ),
                ListContainer(
                  title: 'List of products',
                  width: 335,
                  height: 190,
                ),
                SizedBox(
                  height: 177,
                ),
              ],
            ),
          ),
        ),
        drawer: Container(
          width: 200,
          child: Drawer(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 166, bottom: 30),
                  child: InkWell(
                    child: Icon(
                      Icons.clear,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                CategoryChose(
                  image: AppImage.myProfile,
                  title: 'MY PROFILE',
                ),
                CategoryChose(
                  image: AppImage.myInstructionImage,
                  title: 'MY INSTRUCTION',
                ),
                CategoryChose(
                  image: AppImage.myInvestorImage,
                  title: 'MY INVESTORS',
                ),
                CategoryChose(
                  image: AppImage.myLeadImage,
                  title: 'MY LEAD',
                ),
                CategoryChose(
                  image: AppImage.faqImage,
                  title: 'FAQ',
                ),
                CategoryChose(
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ),
                    );
                  },
                  image: AppImage.logOutImage,
                  title: 'LOGOUT',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
