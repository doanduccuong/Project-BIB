import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  DateTime selectedDate = DateTime.now();
  String dropdownValue = 'Male';
  late TextEditingController _identityNumberController;
  late TextEditingController _nameController;
  late TextEditingController _dateOfBirthController;
  late TextEditingController _genderController;
  late TextEditingController _maritalStatusController;
  late TextEditingController _primaryPhoneNumberController;
  late TextEditingController _emailController;
  late TextEditingController _occupationController;
  late TextEditingController _educationController;
  late TextEditingController _religionController;

  @override
  void initState() {
    _identityNumberController = TextEditingController();
    _nameController = TextEditingController();
    _dateOfBirthController = TextEditingController();
    _genderController = TextEditingController();
    _maritalStatusController = TextEditingController();
    _primaryPhoneNumberController = TextEditingController();
    _emailController = TextEditingController();
    _occupationController = TextEditingController();
    _educationController = TextEditingController();
    _religionController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _identityNumberController.dispose();
    _nameController.dispose();
    _dateOfBirthController.dispose();
    _genderController.dispose();
    _maritalStatusController.dispose();
    _primaryPhoneNumberController.dispose();
    _emailController.dispose();
    _occupationController.dispose();
    _educationController.dispose();
    _religionController.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 740,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: AppColors.secondBackGroundColor),
            child: TextBold(
              title: 'Personal Information',
              size: 16,
              colors: AppColors.mainBackGroundColor,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FormDesign(
            title: 'Identity Number',
            controller: _identityNumberController,
          ),
          FormDesign(
            title: 'Name',
            controller: _nameController,
          ),
          FormDesign(
            title: "Date of birth",
            controller: _dateOfBirthController,
            suffixIcon: InkWell(
              onTap: () => _selectDate(context),
              child: Icon(
                Icons.calendar_today_outlined,
                color: AppColors.mainBackGroundColor,
              ),
            ),
          ),
          FormDesign(
            title: 'Gender',
            controller: _genderController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          FormDesign(
            title: 'Marital Status',
            controller: _maritalStatusController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          FormDesign(
            title: 'Primary Mobile Phone',
            controller: _primaryPhoneNumberController,
          ),
          FormDesign(
            title: 'Email',
            controller: _emailController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          FormDesign(
            title: 'Occupation',
            controller: _occupationController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          FormDesign(
            title: 'Education',
            controller: _educationController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          FormDesign(
            title: 'Religion',
            controller: _educationController,
            suffixIcon: SvgPicture.asset(AppImage.dropDownIconIOS),
          ),
          SizedBox(height: 24,)
        ],
      ),
    );
  }

  void _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        _dateOfBirthController.text = selected.toString();
      });
  }
}
