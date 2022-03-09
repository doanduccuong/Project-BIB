
import 'package:base_flutter/features/authentication/pages/authentication/bloc/auth_page_cubit.dart';
import 'package:base_flutter/features/authentication/pages/authentication/bloc/auth_page_state.dart';
import 'package:base_flutter/features/authentication/views/forgot_password/forgot_password_page.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/authentication/views/reset_password/reset_password_form.dart';


import 'package:base_flutter/features/authentication/views/sign_up/sign_up_form.dart';
import 'package:base_flutter/routing/page_configurations/auth_page_configuration.dart';
import 'package:base_flutter/shared/widgets/layout.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../styles.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  late AuthPageCubit authPageCubit;

  @override
  void initState() {
    authPageCubit = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutAuthPage(
      children: [
        BlocBuilder<AuthPageCubit, AuthPageState>(builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0.h),
            child: _authTitle(state),
          );
        }),
        Expanded(
          child: BlocBuilder<AuthPageCubit, AuthPageState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0.h),
                  child: _authSubView(state),
                );
              }),
        ),
      ],
    );
  }

  Widget _authTitle(AuthPageState state) {
    String title = 'auth.signIn'.translate(context);
    switch (state.currentSubView) {
      case AuthPageSubPage.login:
        title = 'auth.signIn'.translate(context);
        break;
      case AuthPageSubPage.register:
        title = 'auth.register'.translate(context);
        break;
      case AuthPageSubPage.resetPassword:
        title = 'auth.resetPassword'.translate(context);
        break;
      case AuthPageSubPage.forgotPassword:
        title = 'auth.forgottenPassword'.translate(context);
        break;
    }
    return Container(
      child: Text(title,
          style: TextStyles.title, maxLines: 2, textAlign: TextAlign.center),
    );
  }

  Widget _authSubView(AuthPageState state) {
    switch (state.currentSubView) {
      case AuthPageSubPage.login:
        return LogInPage();
      case AuthPageSubPage.register:
        return SignUpForm();
      case AuthPageSubPage.resetPassword:
        return ResetPasswordForm();
      case AuthPageSubPage.forgotPassword:
        return ForgotPassword();
    }
  }

}
