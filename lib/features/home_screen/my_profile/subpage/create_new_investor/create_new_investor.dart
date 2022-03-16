import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/register_new_investor_provider.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/widget/progress_bar.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/register_new_investor.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CreateNewInvestor extends StatefulWidget {
  const CreateNewInvestor({Key? key}) : super(key: key);

  @override
  State<CreateNewInvestor> createState() => _CreateNewInvestorState();
}

class _CreateNewInvestorState extends State<CreateNewInvestor> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _mobileNumberController;
  @override
  void initState() {
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _mobileNumberController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.only(
        top: 25,
        left: 22,
        bottom: 27,
      ),
      title: "Register new investor",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProgressBar(),
          TextNormal(
            title: 'Types of investor',
            colors: AppColors.textSubduedColor,
            size: 12,
          ),
          Row(
            children: [
              Button(
                title: "Individual",
                height: 35,
                width: 167,
                textColor: AppColors.textSubduedColor,
                backGroundColor: AppColors.fillColor,
              ),
              SizedBox(
                width: 1,
              ),
              Button(
                title: "Institutional",
                height: 35,
                width: 167,
                textColor: AppColors.textSubduedColor,
                backGroundColor: AppColors.fillColor,
              ),
            ],
          ),
          FormDesign(
            controller: _fullNameController,
            title: 'Full Name',
          ),
          FormDesign(
            controller: _emailController,
            title: 'Email',
          ),
          FormDesign(
            controller: _mobileNumberController,
            title: 'Mobile Number',
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                callBack: () => Provider.of<RegisterNewInvestorProvider>(context,listen: false)
                    .setChoiceIndex(0),
                backGroundColor:
                Provider.of<RegisterNewInvestorProvider>(context).choiceIndex ==
                            0
                        ? AppColors.textColor
                        : AppColors.fillColor,
                borderColor:
                Provider.of<RegisterNewInvestorProvider>(context).choiceIndex ==
                            0
                        ? AppColors.textLinkColor
                        : null,
                height: 108,
                width: 160,
                title: '',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Provider.of<RegisterNewInvestorProvider>(context)
                                  .choiceIndex ==
                              0
                          ? AppColors.textLinkColor
                          : AppColors.textSubduedColor,
                    ),
                    TextBold(
                      title: 'Face to face option',
                      size: 14,
                      colors: Provider.of<RegisterNewInvestorProvider>(context)
                                  .choiceIndex ==
                              0
                          ? AppColors.textLinkColor
                          : AppColors.textSubduedColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Button(
                borderColor:
                Provider.of<RegisterNewInvestorProvider>(context).choiceIndex ==
                    1
                    ? AppColors.textLinkColor
                    : null,
                callBack: () => Provider.of<RegisterNewInvestorProvider>(context,listen: false)
                    .setChoiceIndex(1),
                backGroundColor:
                Provider.of<RegisterNewInvestorProvider>(context).choiceIndex ==
                    1
                    ? AppColors.textColor
                    : AppColors.fillColor,
                height: 108,
                width: 160,
                title: '',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi,
                      color :Provider.of<RegisterNewInvestorProvider>(context)
                          .choiceIndex ==
                          1
                          ? AppColors.textLinkColor
                          : AppColors.textSubduedColor,
                    ),
                    TextNormal(
                      title: 'Face to face option',
                      size: 14,
                      colors:Provider.of<RegisterNewInvestorProvider>(context)
                          .choiceIndex ==
                          1
                          ? AppColors.textLinkColor
                          : AppColors.textSubduedColor,
                    )
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Button(
            callBack: () => showDialog(
                context: context, builder: (context) => RegisterNewInvestor()),
            title: 'Send request',
            textColor: AppColors.textColor,
            backGroundColor: AppColors.mainBackGroundColor,
            height: 46,
          )
        ],
      ),
    );
  }
}
