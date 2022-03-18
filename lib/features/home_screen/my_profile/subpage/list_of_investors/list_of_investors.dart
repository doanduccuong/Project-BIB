import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfInvestors extends StatelessWidget {
  const ListOfInvestors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextBold(
              title: 'List of investors approved',
              size: 14,
              colors: AppColors.textPrimaryColor,
            ),
            TextNormal(
              title: 'View all',
              size: 14,
              colors: AppColors.textLinkColor,
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          decoration: BoxDecoration(
              color: AppColors.textColor,
              borderRadius: BorderRadius.circular(4)),
          height: 229,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                    title: 'Create instruction',
                    height: 36,
                    width: 124,
                    textColor: AppColors.textColor,
                    backGroundColor: AppColors.textLinkColor,
                    callBack: () => BlocProvider.of<HomeScreenCubit>(context)
                        .goInstruction(),
                  )
                ],
              ),
              Row(
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
                    title: 'Create instruction',
                    height: 36,
                    width: 124,
                    textColor: AppColors.textColor,
                    backGroundColor: AppColors.textLinkColor,
                    callBack: () => BlocProvider.of<HomeScreenCubit>(context)
                        .goInstruction(),
                  )
                ],
              ),
              Row(
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
                    title: 'Create instruction',
                    height: 36,
                    width: 124,
                    textColor: AppColors.textColor,
                    backGroundColor: AppColors.textLinkColor,
                    callBack: () => BlocProvider.of<HomeScreenCubit>(context)
                        .goInstruction(),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
