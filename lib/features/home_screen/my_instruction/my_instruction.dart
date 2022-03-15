import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
class MyInstruction extends StatelessWidget {
  const MyInstruction({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextBold(title: 'This is My Instruction', size: 40,colors: AppColors.startGradient,),
      ),
    );
  }
}
