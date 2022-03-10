import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/data/api/local_api/local_auth_api.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/authentication/views/register/register.dart';
import 'package:base_flutter/widget/button.dart';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    AppImage.appLogoImage,
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
                  borderColor: AppColors.textColor,
                  callBack: () {
                    try {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ),
                      );
                    } catch (e) {
                      print(e);
                    }
                  },
                  title: 'Register',
                  backGroundColor: Colors.transparent,
                  textColor: AppColors.textColor,
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final isAuthenticated = await LocalAuthApi.authenticate();

                      if (isAuthenticated) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 62.25,
                      width: 67.5,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppImage.fingerPrintImage,
                      ),
                    ),
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
