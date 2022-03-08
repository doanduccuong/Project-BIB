import 'package:base_flutter/features/authentication/pages/authentication/bloc/auth_page_cubit.dart';
import 'package:base_flutter/features/authentication/widgets/error_input_message.dart';
import 'package:base_flutter/features/authentication/widgets/policy_term_checkbox.dart';
import 'package:base_flutter/features/authentication/widgets/text_input_button.dart';
import 'package:base_flutter/routing/page_configurations/auth_page_configuration.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/rounded_loading_button.dart';
import 'package:base_flutter/shared/styled_widgets/buttons/styled_btn.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/themes.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordFormState();
  }
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Insets.med, vertical: Insets.xl.h),
                    child: Text(
                      "auth.forgotPasswordContent".translate(context),
                    ),
                  ),
                  TextInputButton("auth.email".translate(context)),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: Insets.med.h),
                      child: ErrorInputMessage("sssss"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Insets.xl.h),
                    child: RoundedLoadingButton(
                        color: Colors.red,
                        onPressed: () {},
                        animateOnTap: false,
                        child: Text("auth.submit".translate(context),
                            style: TextStyles.normalButton
                                .copyWith(color: Colors.white))),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Insets.xl.h),
              child: SimpleBtn(
                child: Text('resetPassword'),
                onPressed: () {
                  context.read<AuthPageCubit>().changeSubPage(
                      authPageSubPage: AuthPageSubPage.resetPassword);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
