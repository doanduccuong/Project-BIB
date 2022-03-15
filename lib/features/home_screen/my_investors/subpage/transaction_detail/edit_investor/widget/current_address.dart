import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

import 'form_design.dart';

class CurrentAddress extends StatefulWidget {
  const CurrentAddress({Key? key}) : super(key: key);

  @override
  State<CurrentAddress> createState() => _CurrentAddressState();
}

class _CurrentAddressState extends State<CurrentAddress> {
  late TextEditingController _provinceController;
  late TextEditingController _cityController;
  late TextEditingController _districtsController;
  late TextEditingController _urbanController;
  late TextEditingController _neighbourhoodController;
  late TextEditingController _addressController;
  late TextEditingController _postalCodeController;
  @override
  void initState() {
    _provinceController = TextEditingController();
    _cityController = TextEditingController();
    _districtsController = TextEditingController();
    _urbanController = TextEditingController();
    _neighbourhoodController = TextEditingController();
    _addressController = TextEditingController();
    _postalCodeController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _provinceController.dispose();
    _cityController.dispose();
    _districtsController.dispose();
    _urbanController.dispose();
    _neighbourhoodController.dispose();
    _addressController.dispose();
    _postalCodeController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 524,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            child: TextBold(
              title: 'Current Address',
              size: 16,
              colors: AppColors.mainBackGroundColor,
            ),
            color: AppColors.secondBackGroundColor,
          ),
          FormDesign(
            title: 'Province',
            controller: _provinceController,
          ),
          FormDesign(
            title: 'City',
            controller: _cityController,
          ),
          FormDesign(
            title: 'Districts',
            controller: _districtsController,
          ),
          FormDesign(
            title: 'Urban Village',
            controller: _urbanController,
          ),
          FormDesign(
            title: 'Neighbourhood/Hamlet',
            controller: _neighbourhoodController,
          ),
          FormDesign(
            title: 'Address',
            controller: _addressController,
          ),
          FormDesign(
            title: 'Postal Code',
            controller: _postalCodeController,
          ),
          SizedBox(height: 24,)
        ],
      ),
    );
  }
}
