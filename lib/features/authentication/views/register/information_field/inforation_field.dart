import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/provider/register_provider.dart';
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
  final String sales = 'Sales';
  final String supervisor = 'Supervisor';
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
          key: context.watch<RegisterProvider>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // full name field
              TextNormal(
                title: 'Full Name *',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              TextFormField(
                validator: (value) {
                  context
                      .read<RegisterProvider>()
                      .checkValidateFullName(value!);
                },
                decoration: InputDecoration(fillColor: Color(0xFF393A4A)),
                controller:
                    context.watch<RegisterProvider>().fullNameController,
              ),

              //email field
              TextNormal(
                title: 'Email *',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xFF393A4A),
                ),
                controller: context.watch<RegisterProvider>().emailController,
              ),
              SizedBox(
                height: 23,
              ),
              //mobile number field
              TextNormal(
                title: 'Mobile number *',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              IntlPhoneField(
                disableLengthCheck: true,
                showCountryFlag: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),

              //company field
              TextNormal(
                title: 'Company',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              Container(
                width: 334,
                height: 34.52,
                child: TabBar(
                  unselectedLabelColor: AppColors.aPrimaryColor,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: AppColors.startGradient),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'Place Bid',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Buy Now',
                    ),
                  ],
                ),
              ),
              Container(
                height: 305.75,
                child: TabBarView(controller: _tabController, children: [
                  Container(
                    child: ListView.builder(itemBuilder: (context,index){
                      return Container(
                        height: 47.5,
                        width: 295.5,
                        child: Column(
                          children: [
                            Column(
                              children: [

                              ],
                            )
                          ],
                        ),
                      );
                    }),
                    height: 305.75,
                    width: 334,
                  ),
                  Icon(Icons.height)
                ]),
              ),


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
              TextNormal(
                title: 'Password*',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              TextFormField(
                decoration: InputDecoration(fillColor: Color(0xFF393A4A)),
                controller:
                    context.watch<RegisterProvider>().passwordController,
              ),

              //company field

              //confirm password field
              TextNormal(
                title: 'Confirm password *',
                colors: AppColors.aPrimaryColor,
                size: 12,
              ),
              TextFormField(
                decoration: InputDecoration(fillColor: Color(0xFF393A4A)),
                controller:
                    context.watch<RegisterProvider>().confirmPasswordController,
              ),
              SizedBox(
                height: 37,
              ),
              Button(
                title: 'Register',
                backGroundColor: AppColors.startGradient,
                textColor: AppColors.textColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
