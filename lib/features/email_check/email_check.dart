
import 'dart:async';

import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/forgot_password/forgot_password_page.dart';
import 'package:base_flutter/features/home/home_page.dart';



import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailCheckPage extends StatefulWidget {
  const EmailCheckPage({Key? key}) : super(key: key);

  @override
  State<EmailCheckPage> createState() => _EmailCheckPageState();
}

class _EmailCheckPageState extends State<EmailCheckPage> {
  late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _initializeTimer();
  }
  void _initializeTimer() {
    print("starrt timer");
    _timer = Timer(const Duration(seconds: 10),_logOutUser);
  }
  void _handleUserInteraction([_]) {
    if (!_timer.isActive) {
      _timer.cancel();

      // This means the user has been logged out
      print("Timer is active");
      return;
    }

    _timer.cancel();
    _initializeTimer();
  }
  void _logOutUser() {

    print("the user has been logout");


    _timer.cancel();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleUserInteraction,
      onPanDown: _handleUserInteraction,
      onScaleStart: _handleUserInteraction,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 27,
              ),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:  Icon(
                    Icons.arrow_back,
                    color: AppColors.startGradient,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 95, top: 77, bottom: 6.73),
                child: SvgPicture.asset(
                  AppImage.group16Image,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: TextBold(
                  title: 'Check you Email',
                  size: 20,
                  colors: AppColors.startGradient,
                  isCenter: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 57),
                height: 44,
                width: 261,
                child: TextNormal(
                  title:
                  'We have sent you a reset password link on your registered email address.',
                  size: 14,
                  colors: AppColors.aPrimaryColor,
                  isCenter: true,
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Container(
                alignment: Alignment.center,
                child: Button(
                  callBack: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ),
                    );
                  },
                  title: 'Go to email',
                  backGroundColor: AppColors.startGradient,
                  textColor: AppColors.textColor,
                  width: 243,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}