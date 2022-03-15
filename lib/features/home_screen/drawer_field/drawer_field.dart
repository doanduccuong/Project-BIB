import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:base_flutter/features/home_screen/widget/category_chose.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DrawerField extends StatelessWidget {
  HomeScreenState currentState;
    DrawerField({Key? key,required this.currentState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 166, bottom: 30),
              child: InkWell(
                child: Icon(
                  Icons.clear,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            CategoryChose(
              backGroundColor: currentState is MyProfileState?AppColors.fillColor:null,
              callBack: (){
                BlocProvider.of<HomeScreenCubit>(context).goHomeScreen();
              },
              image: AppImage.myProfile,
              title: 'MY PROFILE',
            ),
            CategoryChose(
              callBack: (){
                BlocProvider.of<HomeScreenCubit>(context).goInstruction();
              },
              image: AppImage.myInstructionImage,
              title: 'MY INSTRUCTION',
            ),
            CategoryChose(
              callBack: (){
                BlocProvider.of<HomeScreenCubit>(context).goInvestors();
              },
              image: AppImage.myInvestorImage,
              title: 'MY INVESTORS',
            ),
            CategoryChose(
              callBack: (){
                BlocProvider.of<HomeScreenCubit>(context).goLead();
              },
              image: AppImage.myLeadImage,
              title: 'MY LEAD',
            ),
            CategoryChose(
              callBack: (){
                BlocProvider.of<HomeScreenCubit>(context).goFAQ();
              },
              image: AppImage.faqImage,
              title: 'FAQ',
            ),
            CategoryChose(
              callBack: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ),
                );
              },
              image: AppImage.logOutImage,
              title: 'LOGOUT',
            ),
          ],
        ),
      ),
    );
  }
}
