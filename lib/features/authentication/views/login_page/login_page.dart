import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/extention/regex_email.dart';
import 'package:base_flutter/features/authentication/views/login_page/extention/regex_password.dart';
import 'package:base_flutter/features/authentication/views/login_page/provider/login_page_provider.dart';
import 'package:base_flutter/features/authentication/views/login_page/widget/remember_box.dart';
import 'package:base_flutter/features/authentication/views/reset_password/reset_password_form.dart';

import 'package:base_flutter/features/home_login/home_login.dart';

import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_logic.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';

import 'package:base_flutter/shared/styled_widgets/dialogs/base_dialog.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      context.read<LogInPageProvider>().trueState();
      _formKey.currentState?.save();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreenCubitLogic(),
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
    _emailController = TextEditingController();
    _passWordController = TextEditingController();
    _emailController.addListener(() {
      setState(() {}); // setState every time text changes
    });
    _passWordController.addListener(() {
      setState(() {}); // setState every time text changes
    });
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
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.startGradient,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 66,
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppImage.appLogoColorImage,
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
                    FormDesign(
                      focusNode: _emailFocusNode,
                      onEditingComplete: () => FocusScope.of(context)
                          .requestFocus(_passwordFocusNode),
                      validator: (input) =>
                          input!.isValidEmail() ? null : "Error Email",
                      controller: _emailController,
                      title: 'Email Id',
                      isRequired: false,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormDesign(
                      onEditingComplete: _onSubmitForm,
                      focusNode: _passwordFocusNode,
                      validator: (input) =>
                          input!.isValidPassword() ? null : "Error password",
                      suffixIcon: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Provider.of<LogInPageProvider>(context, listen: false)
                              .toggleObscure();
                        },
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: _passWordController.text.isValidPassword()
                              ? AppColors.textColorGrey2
                              : Colors.red,
                        ),
                      ),
                      controller: _passWordController,
                      title: 'Password',
                      isRequired: false,
                      obscureText:
                          Provider.of<LogInPageProvider>(context, listen: true)
                              .obscureTextValue,
                    )

                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const RememberBox(),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => BaseStyledDialog());
                    },
                    child: TextNormal(
                      title: 'Remember',
                      size: 12,
                      colors: context.watch<LogInPageProvider>().isTick == false
                          ? AppColors.aPrimaryColor
                          : AppColors.mainBackGroundColor,
                    ),
                  ),
                  SizedBox(width: 140),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ),
                      );
                    },
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
                onTap: _passWordController.text != '' &&
                        _emailController.text != ''
                    ? () {
                        if (_passWordController.text.length > 6) {
                          context.read<LogInPageProvider>().trueState();
                        } else {
                          context.read<LogInPageProvider>().falseState();
                        }
                        _onSubmitForm();
                      }
                    : null,
                child: Button(
                    title: 'Login',
                    textColor: AppColors.textColor,
                    backGroundColor: _passWordController.text != '' &&
                            _emailController.text != ''
                        ? AppColors.startGradient
                        : AppColors.fillColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
