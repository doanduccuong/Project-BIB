import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/register_new_investor_provider.dart';
import 'package:base_flutter/features/home_screen/my_profile/subpage/create_new_investor/subpage/current_information.dart';
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
  late TextEditingController _companyNameController;
  late TextEditingController _domicileController;
  late TextEditingController _npwpController;
  late TextEditingController _npwpDateController;
  late TextEditingController _countryController;
  late TextEditingController _placeController;
  late TextEditingController _dateController;

  @override
  void initState() {
    _companyNameController = TextEditingController();
    _domicileController = TextEditingController();
    _npwpController = TextEditingController();
    _npwpDateController = TextEditingController();
    _countryController = TextEditingController();
    _placeController = TextEditingController();
    _dateController = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _companyNameController.dispose();
    _domicileController.dispose();
    _npwpController.dispose();
    _npwpDateController.dispose();
    _countryController.dispose();
    _placeController.dispose();
    _dateController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var read = Provider.of<RegisterNewInvestorProvider>(context, listen: false);
    var watch = Provider.of<RegisterNewInvestorProvider>(context, listen: true);
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
          TextNormal(
            title: 'Types of investor',
            colors: AppColors.textSubduedColor,
            size: 12,
          ),
          Row(
            children: [
              Button(
                callBack: () => read.setChoiceIndex(0),
                title: "Individual",
                height: 35,
                width: 167,
                textColor: watch.choiceIndex == 0
                    ? AppColors.mainBackGroundColor
                    : AppColors.textSubduedColor,
                backGroundColor: watch.choiceIndex == 0
                    ? Colors.transparent
                    : AppColors.fillColor,
                borderColor: watch.choiceIndex == 0
                    ? AppColors.mainBackGroundColor
                    : null,
              ),
              SizedBox(
                width: 1,
              ),
              Button(
                backGroundColor: watch.choiceIndex == 1
                    ? Colors.transparent
                    : AppColors.fillColor,
                callBack: () => read.setChoiceIndex(1),
                title: "Institutional",
                height: 35,
                width: 167,
                textColor: watch.choiceIndex == 1
                    ? AppColors.mainBackGroundColor
                    : AppColors.textSubduedColor,
                borderColor: watch.choiceIndex == 1
                    ? AppColors.mainBackGroundColor
                    : null,
              ),
            ],
          ),
          CurrentInformation(
            companyNameController: _companyNameController,
            domicileController: _domicileController,
            npwpController: _npwpController,
            npwpDateController: _npwpDateController,
            countryController: _countryController,
            placeController: _placeController,
            dateController: _dateController,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 15,
              ),
            ],
          ),
          Spacer(),
          Button(
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
