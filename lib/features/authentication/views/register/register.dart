import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/information_field/information_field.dart';
import 'package:base_flutter/features/home_login/home_login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AppTheme theme = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.textColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 22, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 27,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.startGradient,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                TextBold(
                  title: 'Register to BIB',
                  size: 24,
                  colors: AppColors.startGradient,
                ),
                InformationField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
