import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FlashScreen extends StatefulWidget {
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    // AppTheme appTheme = context.select((MainAppState app) => app.theme);
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: AppColors.mainBackGroundColor,
          child: SvgPicture.asset(
            AppImage.logoHorColorImage,
          ),
        ),
        Positioned(
          child: SvgPicture.asset(AppImage.BIBImage),
          top: 0,
          left: 0,
        ),
        Positioned(
          child: SvgPicture.asset(AppImage.BIBColorImage),
          right: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
