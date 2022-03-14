import 'package:base_flutter/configs/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BackGroundDeco extends StatelessWidget {
  const BackGroundDeco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(AppImage.BIBImage),
          Align(alignment:Alignment.bottomRight,child: SvgPicture.asset(AppImage.BIBColorImage))
        ],
      ),
    );
  }
}
