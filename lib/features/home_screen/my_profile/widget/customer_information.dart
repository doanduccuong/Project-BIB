import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../commands/base_command.dart';
import '../../../../components/text_bold.dart';
import '../../../../components/text_normal.dart';
import '../../../../configs/colors.dart';
import '../../../../widget/button.dart';

class CustomerInformation extends StatelessWidget {
  const CustomerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 17.5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBold(
              title: 'John Doe',
              size: 14,
              colors: AppColors.textPrimaryColor,
            ),
            TextNormal(
              title: '0978 765 4321',
              size: 14,
              colors: AppColors.textSubduedColor,
            ),
          ],
        ),
        Button(
          callBack: ()=>Provider.of<HomeScreenCubit>(context,listen: false).goInstruction,
          title: 'Create instruction',
          height: 26,
          width: 124,
          backGroundColor: AppColors.textLinkColor,
          textColor: AppColors.textColor,
          textSize: 12,
        )
      ],
    );
  }
}
