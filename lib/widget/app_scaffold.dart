import 'package:base_flutter/components/text_bold.dart';

import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/widget/navigator_back_arrrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppScaffold extends StatelessWidget {
   bool? useSafeArea = false;
  final Widget bodyWidget;
  final double? toolbarHeight;
  final Color? backGroundColor;
  final EdgeInsets? padding;
  final Widget? leading;
  final String title;
  final Widget? flexibleSpace;
  EdgeInsets? paddingTitle;
  AppScaffold(
      {Key? key,
      this.useSafeArea,
      required this.title,
      this.flexibleSpace,
        this.paddingTitle,
      required this.bodyWidget,
      this.backGroundColor,
      this.toolbarHeight,
      this.leading,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor ?? AppColors.textColor,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          padding: paddingTitle??EdgeInsets.only(top: 20),
          child: TextBold(
            title: title,
            size: 18,
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: toolbarHeight ?? 95,
        backgroundColor: AppColors.mainBackGroundColor,
        leading: Container(
          padding: paddingTitle??EdgeInsets.only(top: 20),
          child: leading ??
              NavigatorBackArrow(
                iconColor: AppColors.textColor,
              ),
        ),
        flexibleSpace: flexibleSpace ??
            Container(
              child: Stack(
                children: [
                  Positioned(
                    top: 55,
                    left: 20,
                    child: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SvgPicture.asset(AppImage.BIBBar1Image),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(AppImage.BIBBar2Image),
                  )
                ],
              ),
            ),
      ),
      body: useSafeArea == true
          ? Padding(
              padding: padding ?? EdgeInsets.only(),
              child: SafeArea(child: bodyWidget),
            )
          : Padding(padding: padding ?? EdgeInsets.only(), child: bodyWidget),
    );
  }
}
