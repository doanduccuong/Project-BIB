import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/current_address.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/other_informtation.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/personal_information.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';

class EditInvestor extends StatelessWidget {
  const EditInvestor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Edit Information',
      bodyWidget: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonalInformation(),
              CurrentAddress(),
              OtherInformation(),

            ],
          ),
        ),
      ),
      backGroundColor: AppColors.textColor,
    );
  }
}
