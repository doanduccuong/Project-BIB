import 'package:base_flutter/features/authentication/pages/authentication/bloc/auth_page_cubit.dart';
import 'package:base_flutter/features/authentication/widgets/error_input_message.dart';
import 'package:base_flutter/features/authentication/widgets/policy_term_checkbox.dart';
import 'package:base_flutter/features/authentication/widgets/text_input_button.dart';
import 'package:base_flutter/routing/page_configurations/auth_page_configuration.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/rounded_loading_button.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/styled_btn.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SignUpFormState();
  }
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  var a = true;
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            // SimpleBtn(child: Text('Login'), onPressed: (){
            //   context
            //       .read<AuthPageCubit>()
            //       .changeSubPage(authPageSubPage: AuthPageSubPage.login);
            // },)
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 23.0.h),
                    child: Text('auth.createYourProfile'.translate(context),
                        style: TextStyles.normal.copyWith(color: theme.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: TextInputButton('auth.name'.translate(context)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: TextInputButton('auth.email'.translate(context)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: TextInputButton('auth.password'.translate(context)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: TextInputButton(
                        'auth.confirmPassword'.translate(context)),
                  ),
                  Container(
                      child: Padding(
                          padding: EdgeInsets.only(top: 15.0.h),
                          child: ErrorInputMessage('sssss'))),
                  Padding(
                    padding: EdgeInsets.only(top: 33.0.h, bottom: 33.h),
                    child: PolicyTermCheckbox(
                      initValue: a,
                      showCheckbox: true,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          a = value;
                        });
                      },
                    ),
                  ),
                  RoundedLoadingButton(
                      color: Colors.red,
                      onPressed: () {},
                      animateOnTap: false,
                      child: Text('auth.joinUs'.translate(context),
                          style: TextStyles.normalButton
                              .copyWith(color: Colors.white)))
                ],
              ),
            ),

            SimpleBtn(
              child: Text('forgot password'),
              onPressed: () {
                context.read<AuthPageCubit>().changeSubPage(
                    authPageSubPage: AuthPageSubPage.forgotPassword);
              },
            ),
          ],
        ),
      ),
    );
  }

  // _performLogin() {
  //   if (_formKey.currentState?.validate() ?? false) {
  //     _signInCubit.login(email, password);
  //   }
  // }
}
