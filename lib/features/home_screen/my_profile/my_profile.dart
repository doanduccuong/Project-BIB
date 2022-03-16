import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:base_flutter/features/home_screen/drawer_field/drawer_field.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/create_new_investor.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/register_new_investor_provider.dart';
import 'package:base_flutter/features/home_screen/widget/list_container.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is MyProfileState) {
          return Scaffold(

            drawerEnableOpenDragGesture: true,
            backgroundColor: Color(0xFFEEF0F6),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 174,
                      decoration:
                          BoxDecoration(color: AppColors.mainBackGroundColor),
                      padding: EdgeInsets.only(left: 22, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 59,
                          ),
                          Row(
                            children: [
                              Builder(
                                builder: (context) {
                                  return MenuIcon(callBack: () {
                                    Scaffold.of(context).openDrawer();
                                  });
                                },
                              ),
                              Spacer(),
                              Container(
                                height: 22.9,
                                width: 110,
                                child: SvgPicture.asset(
                                    AppImage.logoHorColorImage),
                              ),
                              SizedBox(
                                width: 56,
                              ),
                              Icon(
                                Icons.search,
                                color: AppColors.textColor,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.notifications_none,
                                color: AppColors.textColor,
                              )
                            ],
                          ),
                          TextNormal(
                            title: 'Hello',
                            size: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextBold(
                                title: 'John Doe!',
                                size: 24,
                              ),
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 21,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Color(0xFFF0F6),
                      height: 700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            callBack: ()=>Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CreateNewInvestor(),
                              ),
                            ),
                            title: '+ Create new investor',
                            backGroundColor: AppColors.textColor,
                            textColor: AppColors.mainBackGroundColor,
                            textSize: 14,
                          ),
                          ListContainer(
                            title: 'List of investor',
                            width: 335,
                            height: 190,
                          ),
                          ListContainer(
                            title: 'List of products',
                            width: 335,
                            height: 190,
                          ),
                          ListContainer(
                            title: 'BMoney investors',
                            width: 335,
                            height: 190,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            drawer: DrawerField(
              currentState: state,
            ),
          );
        } else {
          return Container(
            color: Colors.red,
          );
        }
      },
    );
  }
}
