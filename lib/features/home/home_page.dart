import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/landing/widgets/button.dart';
import 'package:base_flutter/features/login_page/login_page.dart';
import 'package:base_flutter/features/main/pages/main_page.dart';
import 'package:base_flutter/features/history/pages/history_page.dart';
import 'package:base_flutter/features/profile/pages/profile_page.dart';
import 'package:base_flutter/features/setting/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [AppColors.endGradient, AppColors.startGradient],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(left: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 144,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 57),
                  child: SvgPicture.asset(
                    AppImage.appLogoColorImage,
                  ),
                ),
                SizedBox(height: 75),
                TextBold(title: 'Welcome', size: 24),
                TextNormal(
                  title: 'Manage your customer',
                  size: 16,
                  height: 1.5,
                ),
                SizedBox(height: 57),
                Button(
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ),
                    );
                  },
                  title: 'Login',
                ),
                SizedBox(height: 15),
                Button(
                  title: 'Register',
                  backGroundColor: Colors.transparent,
                  textColor: AppColors.textColor,
                ),
                Container(
                  padding: EdgeInsets.only(left: 142, top: 42.1),
                  child: SvgPicture.asset(
                    AppImage.fingerPrintImage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
