import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/shared/extensions/regex_email.dart';
import 'package:base_flutter/shared/extensions/regex_full_name.dart';

import 'package:base_flutter/features/authentication/views/register/information_field/widget/mobile_number_field.dart';
import 'package:base_flutter/features/authentication/views/register/information_field/widget/company_field.dart';
import 'package:base_flutter/features/authentication/views/register/information_field/widget/role_field.dart';
import 'package:base_flutter/features/authentication/views/register/provider/register_provider.dart';

import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:base_flutter/features/send_otp/send_otp.dart';
import 'package:base_flutter/shared/extensions/regex_password.dart';
import 'package:base_flutter/widget/button.dart';

import 'package:flutter/material.dart';

import 'package:provider/src/provider.dart';

class InformationField extends StatefulWidget {
  const InformationField({Key? key}) : super(key: key);

  @override
  State<InformationField> createState() => _InformationFieldState();
}

class _InformationFieldState extends State<InformationField>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  int _selectedTab = 0;
  final String sales = 'Sales';
  final String supervisor = 'Supervisor';
  final String _inHouse = "Inhouse";
  final String _agency = "Agency";
  late TabController _tabController;

  //controller for text form field
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _mobileNumberController;
  late TextEditingController _companyNameController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  //focus node
  late FocusNode _fullNameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _mobileNumberFocusNode;
  late FocusNode _passwordFocusNode;
  late FocusNode _confirmPassWordFocusNode;
  @override
  void initState() {
    //init all focus node

    _fullNameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _mobileNumberFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPassWordFocusNode = FocusNode();

    //init all controller
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _mobileNumberController = TextEditingController();
    _companyNameController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();

    // init tab controller
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedTab = _tabController.index;
        });
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();
    _companyNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // full name field
              FormDesign(
                focusNode: _fullNameFocusNode,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_emailFocusNode),
                validator: (input) =>
                    input!.isValidFullName() ? null : "Error full name",
                controller: _fullNameController,
                title: 'Full Name',
              ),
              //email field
              FormDesign(
                focusNode: _emailFocusNode,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_mobileNumberFocusNode),
                validator: (input) =>
                    input!.isValidEmail() ? null : "Error email",
                controller: _emailController,
                title: 'Email',
              ),

              //mobile number field
              MobileNumberField(
                requestFocusNode: _passwordFocusNode,
                mobileNumberFocusNode: _mobileNumberFocusNode,
                mobileNumberController: _mobileNumberController,
              ),

              //company field
              FormDesign(
                focusNode: _passwordFocusNode,
                onEditingComplete: () => FocusScope.of(context)
                    .requestFocus(_confirmPassWordFocusNode),
                obscureText: true,
                validator: (input) => input!.validatePassword(input),
                controller: _passwordController,
                title: 'Password',
              ),
              //confirm password field
              FormDesign(
                focusNode: _confirmPassWordFocusNode,
                onEditingComplete: _onSubmitForm,
                obscureText: true,
                validator: (input) {
                  if (input == '') {
                    return "Error confirm password";
                  } else if (Provider.of<RegisterProvider>(context,
                          listen: false)
                      .isTheSame) {
                    return null;
                  } else {
                    return "Confirm password is not the same";
                  }
                },
                controller: _confirmPasswordController,
                title: 'Confirm Password',
              ),

              //company field
              CompanyField(
                inHouse: _inHouse,
                agency: _agency,
                companyController: _companyNameController,
                selectedTab: _selectedTab,
                tabController: _tabController,
              ),

              SizedBox(
                height: 23,
              ),

              //role field
              RoleField(
                sales: sales,
                supervisor: supervisor,
              ),
              SizedBox(
                height: 200,
              ),
              Button(
                callBack: () {
                  context
                      .read<RegisterProvider>()
                      .checkValidatePhoneNumber(_mobileNumberController.text);
                  context.read<RegisterProvider>().checkTheSame(
                      _passwordController.text,
                      _confirmPasswordController.text);
                  _onSubmitForm();
                },
                title: 'Register',
                backGroundColor: AppColors.startGradient,
                textColor: AppColors.textColor,
              ),
              SizedBox(
                height: 61,
              )
            ],
          ),
        )
      ],
    );
  }

  void _onSubmitForm() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid == true) {
      _formKey.currentState?.save();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SendOTP(),
        ),
      );
    }
  }
}
