import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:base_flutter/features/home_screen/widget/list_container.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_lead/subpage/list_of_product/list_of_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
      if (state is MyProfileState) {
        return Container(
          decoration: BoxDecoration(gradient: AppColors.gradientStyle1),
          child: Scaffold(
            drawerEnableOpenDragGesture: true,
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                height: 815,
                child: Container(
                  padding: EdgeInsets.only(left: 22, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 59,
                      ),
                      Row(
                        children: [
                          Builder(builder: (context) {
                            return MenuIcon(callBack: () {
                              Scaffold.of(context).openDrawer();
                            });
                          }),
                          Spacer(),
                          Container(
                            height: 22.9,
                            width: 110,
                            child:
                                SvgPicture.asset(AppImage.logoHorColorImage),
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
                      Button(
                        title: '+ Create new investor',
                        backGroundColor: Colors.transparent,
                        textColor: AppColors.textColor,
                        textSize: 14,
                        borderColor: AppColors.textColor,
                      ),
                      ListContainer(
                        title: 'List of investor',
                        width: 335,
                        height: 190,
                      ),
                      ListContainer(
                        callBack: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ListOfProducts(),
                          ),
                        ),
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
                ),
              ),
            ),
          ),
        );
      } else
        return Container(
          color: AppColors.mainBackGroundColor,
        );
    });
  }
}
