import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
class TransactionTab extends StatelessWidget {
  const TransactionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextBold(title: 'Transaction tab',size: 30,colors: AppColors.mainBackGroundColor,),
    );
  }
}
