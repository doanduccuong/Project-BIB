import 'package:base_flutter/commands/navigate_to_command.dart';
import 'package:base_flutter/commands/set_current_user_command.dart';
import 'package:base_flutter/features/authentication/pages/authentication/bloc/auth_page_cubit.dart';
import 'package:base_flutter/features/authentication/views/sign_in/bloc/sign_in_cubit.dart';
import 'package:base_flutter/features/authentication/views/sign_in/bloc/sign_in_state.dart';
import 'package:base_flutter/features/authentication/widgets/error_input_message.dart';
import 'package:base_flutter/features/authentication/widgets/policy_term_checkbox.dart';
import 'package:base_flutter/features/authentication/widgets/text_input_button.dart';
import 'package:base_flutter/routing/page_configurations/auth_page_configuration.dart';
import 'package:base_flutter/routing/page_configurations/home_page_configuration.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/rounded_loading_button.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/styled_btn.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SignInFormState();
  }
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final RoundedLoadingButtonController _btnController =
      new RoundedLoadingButtonController();
  String email = '';
  String password = '';
  late SignInCubit _signInCubit;

  @override
  void initState() {
    super.initState();
    _signInCubit = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is Success) {
          SetCurrentUserCommand().run(state.user);
          NavigateToCommand().run(HomePageConfiguration());
        } else if (state is Loading) {
          _btnController.start();
        }
      },
      child: BlocBuilder<SignInCubit, SignInState>(
        builder: (context, state) {
          AppTheme theme = Provider.of(context);
          return SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 26.0.h),
                        child: TextInputButton(
                            "auth.emailAddress".translate(context)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0.h),
                        child:
                            TextInputButton("auth.password".translate(context)),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(top: 15.0.h),
                        child: ErrorInputMessage("sssss"),
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 22.0.h, bottom: 43.h),
                        child: Text(
                            "auth.forgottenYourPassword".translate(context),
                            style: (TextStyles.normal)
                                .copyWith(color: theme.grey)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 32.h),
                        child: PolicyTermCheckbox(showCheckbox: false),
                      ),
                      RoundedLoadingButton(
                        color: theme.red,
                        onPressed: _performLogin,
                        animateOnTap: false,
                        child: Text("auth.signIn".translate(context),
                            style: TextStyles.normalButton
                                .copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('auth.notMember'.translate(context),
                          style: TextStyles.normal.copyWith(color: theme.grey)),
                      SizedBox(width: 5.w),
                      SimpleBtn(
                        child: Text('auth.joinUs'.translate(context),
                            style: TextStyles.normalUnderline
                                .copyWith(color: theme.red)),
                        onPressed: () {
                          context.read<AuthPageCubit>().changeSubPage(
                              authPageSubPage: AuthPageSubPage.register);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _performLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      _signInCubit.login(email, password);
    }
  }
}
