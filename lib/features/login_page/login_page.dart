import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/email_check/email_check.dart';
import 'package:base_flutter/features/landing/widgets/button.dart';
import 'package:base_flutter/features/login_page/provider/login_page_provider.dart';
import 'package:base_flutter/features/login_page/widget/remember_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  late TextEditingController _emailController;
  late TextEditingController _passWordController;

  void _onSubmitForm() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid == true) {
      _formKey.currentState?.save();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EmailCheckPage(),
        ),
      );
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _emailController= TextEditingController();
    _passWordController= TextEditingController();

    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:  Icon(
                  Icons.arrow_back,
                  color: AppColors.startGradient,
                ),
              ),
              SizedBox(
                height: 66,
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppImage.appLogoImage,
                  color: AppColors.startGradient,
                ),
              ),
              SizedBox(
                height: 56,
              ),
              TextBold(
                title: 'Hello',
                size: 24,
                colors: AppColors.startGradient,
              ),
              TextNormal(
                title: 'Login first to continue',
                size: 16,
                colors: AppColors.textColorGrey2,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextNormal(title: 'Email ID',size: 12,colors: AppColors.aPrimaryColor,),
                    //email form feld
                    TextFormField(
                      key: const ValueKey('email'),
                      controller: _emailController,
                      validator: (value) {
                        Provider.of<LogInScreenProvider>(context,listen: false).isValidEmail;
                        if (value!.contains("@") && value.contains(".com")) {
                          return null;
                        } else {
                          return "Error email";
                        }
                      },
                      focusNode: _emailFocusNode,
                      decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                      onEditingComplete: () => FocusScope.of(context)
                          .requestFocus(_passwordFocusNode),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //password form field
                    TextNormal(title: 'Password',size: 12,colors: AppColors.aPrimaryColor,),
                    TextFormField(
                      controller: _passWordController,
                      obscureText: Provider.of<LogInScreenProvider>(context,
                          listen: false)
                          .obscureTextValue,
                      key: const ValueKey('password'),
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.length < 6) {
                          return 'Error password';
                        } else {
                          return null;
                        }
                      },
                      focusNode: _passwordFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        suffixIcon: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Provider.of<LogInScreenProvider>(context,
                                listen: false)
                                .toggleObscure();
                          },
                          child: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: AppColors.textColorGrey2,
                          ),
                        ),
                      ),
                      onEditingComplete: _onSubmitForm,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const RememberBox(),
                  TextNormal(
                    title: 'Remember',
                    size: 12,
                    colors: AppColors.aPrimaryColor,
                  ),
                  SizedBox(width: 140),
                  InkWell(
                    child: TextNormal(
                      title: 'Forgot Password?',
                      size: 12,
                      colors: AppColors.forgotPasswordColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              //submit button
              InkWell(
                onTap: () {
                  _onSubmitForm();
                },
                child: Button(
                  title: 'Login',
                  backGroundColor: context
                      .watch<LogInScreenProvider>()
                      .isValidPassword ==
                      true &&
                      context.watch<LogInScreenProvider>().isValidEmail ==
                          true
                      ? AppColors.startGradient
                      : AppColors.fillColor,
                  textColor: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}