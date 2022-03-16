import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class UpdateInfo extends StatefulWidget {
  const UpdateInfo({Key? key}) : super(key: key);

  @override
  State<UpdateInfo> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateInfo> {
  late TextEditingController _productOfferedController;
  late TextEditingController _amountController;
  late TextEditingController _feeOfferedController;
  late TextEditingController _potentialController;
  late TextEditingController _statusController;
  @override
  void initState() {
    _productOfferedController = TextEditingController();
    _amountController = TextEditingController();
    _feeOfferedController = TextEditingController();
    _potentialController = TextEditingController();
    _statusController = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _productOfferedController.dispose();
    _amountController.dispose();
    _feeOfferedController.dispose();
    _potentialController.dispose();
    _statusController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.only(top: 20),
      title: 'Update infor',
      bodyWidget: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FormDesign(
              controller: _productOfferedController,
              title: 'Product offered',
            ),
            FormDesign(
              controller: _productOfferedController,
              title: 'Amount',
            ),
            FormDesign(
              controller: _productOfferedController,
              title: 'Fee offered',
            ),
            FormDesign(
              controller: _productOfferedController,
              title: 'Potential revenue',
            ),
            FormDesign(
              controller: _productOfferedController,
              title: 'Status',
            ),

            Row(
              children: [
                SizedBox(width: 20,),
                Button(
                  title: 'Cancel',
                  width: 162,
                  height: 46,
                  textColor: AppColors.mainBackGroundColor,
                  backGroundColor: AppColors.textColor,
                  borderColor: AppColors.mainBackGroundColor,
                ),
                SizedBox(width: 20,),
                Button(
                  title: 'Cancel',
                  width: 162,
                  height: 46,
                  textColor: AppColors.textColor,
                  backGroundColor: AppColors.mainBackGroundColor,
                )
              ],
            ),
            SizedBox(height: 41,)
          ],
        ),
      ),
    );
  }
}
