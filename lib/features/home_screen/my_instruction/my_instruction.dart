import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/my_instruction/subpage/redemption.dart';
import 'package:base_flutter/features/home_screen/my_instruction/subpage/sucscription.dart';
import 'package:base_flutter/features/home_screen/my_instruction/subpage/switching.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyInstruction extends StatelessWidget {
  const MyInstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: ()=>BlocProvider.of<HomeScreenCubit>(context).goHomeScreen(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      backGroundColor: AppColors.secondBackGroundColor,
      title: 'Instruction',
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBold(
            title: 'Instruction',
            size: 24,
            colors: AppColors.mainBackGroundColor,
          ),
          Container(
            width: 200,
            child: TextNormal(
              title: 'What type of instruction do you want to create?',
              size: 14,
              colors: AppColors.textSecondaryColor,
            ),
          ),
          Button(
            callBack: ()=>Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Subscription(),
              ),
            ),
            title: 'Subscription',
            textSize: 18,
            textColor: AppColors.textColor,
            height: 108,
            width: 334,
            backGroundColor: AppColors.mainBackGroundColor,
          ),
          Button(
            callBack: ()=>Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Redemption()
              ),
            ),
            title: 'Redemption',
            textSize: 18,
            textColor: AppColors.textColor,
            height: 108,
            width: 334,
            backGroundColor: AppColors.fillColor,
          ),
          Button(
            callBack: ()=>Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Switching(),
              ),
            ),
            title: 'Switching',
            textSize: 18,
            textColor: AppColors.textColor,
            height: 108,
            width: 334,
            backGroundColor: AppColors.fillColor,
          )
        ],
      ),
    );
  }
}
