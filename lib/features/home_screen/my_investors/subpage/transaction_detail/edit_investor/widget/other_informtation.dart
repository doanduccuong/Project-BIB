import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';

import 'form_design.dart';

class OtherInformation extends StatefulWidget {
  const OtherInformation({Key? key}) : super(key: key);

  @override
  State<OtherInformation> createState() => _OtherInformationState();
}

class _OtherInformationState extends State<OtherInformation> {
  late TextEditingController _incomeLevelController;
  late TextEditingController _riskProfileController;
  late TextEditingController _investmentObjectiveController;
  late TextEditingController _sourceOfFundController;
  late TextEditingController _beneficiaryOwnerController;
  late TextEditingController _politicallyController;
  late TextEditingController _bankNameController;
  late TextEditingController _bankAccountNoController;
  late TextEditingController _bankAccountNameController;

  @override
  void initState() {
    // TODO: implement initState
    _incomeLevelController = TextEditingController();
    _riskProfileController = TextEditingController();
    _investmentObjectiveController = TextEditingController();
    _sourceOfFundController = TextEditingController();
    _beneficiaryOwnerController = TextEditingController();
    _politicallyController = TextEditingController();
    _bankNameController = TextEditingController();
    _bankAccountNoController = TextEditingController();
    _bankAccountNameController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1474,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            child: TextBold(
              title: 'Other Information',
              size: 16,
              colors: AppColors.mainBackGroundColor,
            ),
            color: AppColors.secondBackGroundColor,
          ),
          FormDesign(
            title: 'Income Level',
            controller: _incomeLevelController,
          ),
          FormDesign(
            title: 'Risk Profile',
            controller: _riskProfileController,
          ),
          FormDesign(
            title: 'Investment Objective',
            controller: _investmentObjectiveController,
          ),
          FormDesign(
            title: 'Source of Fund',
            controller: _sourceOfFundController,
          ),
          FormDesign(
            title: 'Beneficiary Owner',
            controller: _beneficiaryOwnerController,
          ),
          FormDesign(
            title: 'Politically Exposed Persons',
            controller: _politicallyController,
          ),
          FormDesign(
            title: 'Bank Name',
            controller: _bankNameController,
          ),
          FormDesign(
            title: 'Bank branch',
            controller: _bankNameController,
          ),
          FormDesign(
            title: 'Bank Account No',
            controller: _bankAccountNoController,
          ),
          FormDesign(
            title: 'Bank Account Name',
            controller: _bankAccountNameController,
          ),
          RequiredTitle(title: 'Identity Picture'),
          Container(height: 201,width:335,color: AppColors.mainBackGroundColor,),
          RequiredTitle(title: 'Selfie with Identity Picture'),
          Container(height: 201,width:335,color: AppColors.mainBackGroundColor,)
        ],
      ),
    );
  }
}
