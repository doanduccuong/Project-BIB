import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/my_lead/widget/user_information.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core_packages.dart';

class MyLead extends StatelessWidget {
  const MyLead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.symmetric(horizontal: 20),
      backGroundColor: AppColors.secondBackGroundColor,
      leading: IconButton(
        onPressed: () => BlocProvider.of<HomeScreenCubit>(context).goHomeScreen(),
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.textColor,
        ),
      ),
      title: 'My lead',
      bodyWidget: Column(
        children: [
          SizedBox(height: 20,),
          Button(title: '+ Create new lead',height: 46,width: 335,textColor: AppColors.mainBackGroundColor,),
          UserInformation()
        ],
      ),
    );
  }
}
