import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/reset_password/provider/reset_password_provider.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  @override
  void dispose() {
    // TODO: implement dispose
    context.read<ResetPasswordProvider>().disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextNormal(
            title: 'New Password',
            colors: AppColors.textColorGrey2,
            size: 12,
          ),
          Form(
            key: context.watch<ResetPasswordProvider>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  obscureText:
                      context.watch<ResetPasswordProvider>().obscurePassword,
                  validator: (value) {
                    if (value == '') {
                      return 'Error new password';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => context
                          .read<ResetPasswordProvider>()
                          .toggleObscurePassWord(),
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.textColorGrey2,
                      ),
                    ),
                  ),
                  controller:
                      context.read<ResetPasswordProvider>().passwordController,
                ),
                SizedBox(
                  height: 23,
                ),
                TextNormal(
                  title: 'Confirm new password',
                  colors: AppColors.textColorGrey2,
                  size: 12,
                ),
                TextFormField(
                  validator: (value) {
                    if (context.read<ResetPasswordProvider>().isTheSame ==
                        false) {
                      return 'Confirm password is not match';
                    }
                    if (value == '') {
                      return 'Error confirm password';
                    }
                    return null;
                  },
                  obscureText: context
                      .watch<ResetPasswordProvider>()
                      .obscureConfirmPassWord,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => context
                          .read<ResetPasswordProvider>()
                          .toggleObscureNewPassWord(),
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.textColorGrey2,
                      ),
                    ),
                  ),
                  controller: context
                      .read<ResetPasswordProvider>()
                      .confirmPasswordController,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Button(
            callBack: () {
              context.read<ResetPasswordProvider>().checkTheSame();
              context.read<ResetPasswordProvider>().notify(context);
            },
            title: 'Update',
            backGroundColor: AppColors.startGradient,
            textColor: AppColors.textColor,
          )
        ],
      ),
    );
  }
}
