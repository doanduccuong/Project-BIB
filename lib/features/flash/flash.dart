import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/landing/widgets/button.dart';
import 'package:base_flutter/models/main_app_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = context.select((MainAppState app) => app.theme);
    return Scaffold(
      backgroundColor: appTheme.accent1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Center(child: Text('Flash Screen'),)],
      ),
    );
    // return Container(
    //   decoration:  BoxDecoration(
    //       gradient: LinearGradient(
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomLeft,
    //         colors: [AppColors.endGradient,AppColors.startGradient],
    //       )
    //   ),
    //   child: Scaffold(
    //       backgroundColor: Colors.transparent,
    //       body: Container(
    //         padding: EdgeInsets.only(left: 20.w),
    //         child: SafeArea(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               SizedBox(height: 144.h,),
    //               Padding(padding:EdgeInsets.only(left: 57.w),child: SvgPicture.asset(AppImage.appLogoColorImage,),),
    //               SizedBox(height: 75.h),
    //               TextBold(title: 'Welcome', size: 24.sp),
    //               TextNormal(title: 'Manage your customer',size: 16.sp,height: 1.5.h,),
    //               SizedBox(height: 57.h),
    //               // Button(title)
    //               SizedBox(height: 15.h),
    //               // Button(title: 'Register',backGroundColor: Colors.transparent,textColor: AppColors.textColor,),
    //               Container(padding: EdgeInsets.only(left: 142,top: 42.1.h),child: SvgPicture.asset(AppImage.fingerPrintImage,),),
    //             ],
    //           ),
    //         ),
    //       )
    //   ),
    // );
  }
}
