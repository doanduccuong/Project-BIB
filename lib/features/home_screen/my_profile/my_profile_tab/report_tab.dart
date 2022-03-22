import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
class ReportTab extends StatelessWidget {
  const ReportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextBold(title: 'Report Tab',size: 30,colors: AppColors.mainBackGroundColor,),
    );
  }
}
