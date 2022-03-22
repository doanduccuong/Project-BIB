import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/provider/register_provider.dart';
import 'package:base_flutter/features/authentication/views/register/tab_view/agency_tab.dart';
import 'package:base_flutter/features/authentication/views/register/tab_view/inhouse_tab.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:base_flutter/features/send_otp/send_otp.dart';
import 'package:base_flutter/widget/button.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
  late TabController _tabController;
  @override
  void initState() {
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
    // TODO: implement dispose
    super.dispose();
    context.read<RegisterProvider>().dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // full name field
              RequiredTitle(title: 'Full Name'),
              TextFormField(
                validator: (value) {
                  if (value!.isNotEmpty) {
                    return null;
                  } else
                    return 'Error name';
                },
                decoration: InputDecoration(fillColor: Color(0xFF393A4A)),
                controller:
                    context.watch<RegisterProvider>().fullNameController,
              ),
              SizedBox(
                height: 23,
              ),

              //email field
              RequiredTitle(title: 'Email'),
              TextFormField(
                validator: (value) {
                  if (value!.contains('@') && value.contains('.com')) {
                    return null;
                  } else
                    return 'Error Email';
                },
                decoration: InputDecoration(
                  fillColor: Color(0xFF393A4A),
                ),
                controller: context.watch<RegisterProvider>().emailController,
              ),
              SizedBox(
                height: 23,
              ),

              //mobile number field
              RequiredTitle(title: 'Mobile Number'),
              SizedBox(height: 20,),
              Container(
                height: 27,
                width: 335,
                child: IntlPhoneField(
                  autovalidateMode: AutovalidateMode.disabled,
                  controller: context.watch<RegisterProvider>().mobileNumberController,
                  dropdownIconPosition: IconPosition.trailing,
                  disableLengthCheck: true,
                  showCountryFlag: false,
                  decoration: InputDecoration(
                    errorText: context.watch<RegisterProvider>().isValidatePhoneNumber==true?null:'Error phone number',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Divider(
                thickness: 1,
              ),

              //company field
              TextNormal(
                title: 'Company',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textLinkColor)
                ),
                width: 334,
                height: 400,
                child: Column(
                  children: [
                    TabBar(
                      unselectedLabelColor: AppColors.bPrimaryColor,
                      labelColor: AppColors.startGradient,
                      indicatorColor: AppColors.dPrimaryColor,
                      controller: _tabController,
                      labelPadding: const EdgeInsets.all(0.0),
                      tabs: [
                        _getTab(
                          0,
                          Text('Inhouse'),
                        ),
                        _getTab(
                          1,
                          Text('Agency'),
                        ),
                      ],
                    ),
                  Container(
                    height: 400,
                    child: TabBarView(
                          controller: _tabController,
                          children: [InHouseTab(), AgencyTab()],
                        ),
                  ),
                  ],
                )
              ),
              // Container(
              //   padding: EdgeInsets.only(
              //     right: 20,
              //   ),
              //   height: 305.75,
              //   width: MediaQuery.of(context).size.width * 0.91,
              //   child: TabBarView(
              //     controller: _tabController,
              //     children: [InHouseTab(), AgencyTab()],
              //   ),
              // ),

              SizedBox(
                height: 24,
              ),
              //row field
              TextNormal(
                title: 'Role',
                colors: AppColors.aPrimaryColor,
              ),
              Row(
                children: [
                  Button(
                    callBack: () {
                      context.read<RegisterProvider>().selectRole(sales);
                    },
                    title: sales,
                    backGroundColor:
                        context.watch<RegisterProvider>().roleSelected == sales
                            ? AppColors.startGradient
                            : Color(0xFFF4F4F9),
                    height: 35,
                    width: 167,
                    textColor:
                        context.watch<RegisterProvider>().roleSelected == sales
                            ? AppColors.textColor
                            : AppColors.textColorGrey2,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Button(
                    callBack: () {
                      context.read<RegisterProvider>().selectRole(supervisor);
                    },
                    title: supervisor,
                    backGroundColor:
                        context.watch<RegisterProvider>().roleSelected ==
                                supervisor
                            ? AppColors.startGradient
                            : Color(0xFFF4F4F9),
                    height: 35,
                    width: 167,
                    textColor: context.watch<RegisterProvider>().roleSelected ==
                            supervisor
                        ? AppColors.textColor
                        : AppColors.textColorGrey2,
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              // password field
              RequiredTitle(title: 'Password'),
              TextFormField(
                validator: (value) {
                  if (value == '') {
                    return 'Error new password';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  fillColor: Color(0xFF393A4A),
                ),
                controller:
                    context.watch<RegisterProvider>().passwordController,
              ),

             SizedBox(height: 22,),

              //confirm password field
              RequiredTitle(title: 'Confirm password'),
              TextFormField(
                validator: (value) {
                  if (context.read<RegisterProvider>().isTheSame == false) {
                    return 'Confirm password is not match';
                  }
                  if (value == '') {
                    return 'Error confirm password';
                  }
                  return null;
                },
                decoration: InputDecoration(fillColor: Color(0xFF393A4A)),
                controller:
                    context.watch<RegisterProvider>().confirmPasswordController,
              ),
              SizedBox(
                height: 37,
              ),
              Button(
                callBack: () {
                  context.read<RegisterProvider>().checkValidatePhoneNumber();
                  context.read<RegisterProvider>().checkTheSame();
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

  _getTab(index, child) {
    return Tab(
      child: SizedBox.expand(
        child: Container(
          alignment: Alignment.center,
          child: child,
          decoration: BoxDecoration(
              color: (_selectedTab == index
                  ? AppColors.dPrimaryColor
                  : AppColors.fillColor),
              borderRadius: _generateBorderRadius(index),
              border: _selectedTab == index
                  ? Border.all(color: AppColors.bPrimaryColor)
                  : null),
        ),
      ),
    );
  }

  _generateBorderRadius(index) {
    if ((index + 1) == _selectedTab)
      return BorderRadius.only(
        topLeft: Radius.circular(4.0),
        topRight: Radius.circular(4.0),
      );
    else if ((index - 1) == _selectedTab)
      return BorderRadius.only(bottomLeft: Radius.circular(4.0));
    else
      return BorderRadius.zero;
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
