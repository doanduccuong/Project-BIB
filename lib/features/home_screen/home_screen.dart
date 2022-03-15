import 'dart:async';
import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/provider/home_screen_provider.dart';
import 'package:base_flutter/features/home_screen/widget/category_chose.dart';
import 'package:base_flutter/features/home_screen/widget/list_container.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.gradientStyle1),
      child: Scaffold(
        drawerEnableOpenDragGesture: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: 815,
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
                      Builder(builder: (context) {
                        return MenuIcon(callBack: () {
                          Scaffold.of(context).openDrawer();
                        });
                      }),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold(
                        title: 'John Doe!',
                        size: 24,
                      ),
                      CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 21,
                        ),
                      )
                    ],
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
                  ListContainer(
                    title: 'BMoney investors',
                    width: 335,
                    height: 190,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
