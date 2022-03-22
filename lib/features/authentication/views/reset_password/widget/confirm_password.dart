import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/reset_password/provider/reset_password_provider.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:base_flutter/shared/extensions/regex_password.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../commands/base_command.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {





  final  _formKey = GlobalKey<FormState>();
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late FocusNode _passwordFocusNode;
  late FocusNode _confirmPasswordFocusNode;

  void _onUpdateForm() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid == true) {
      _formKey.currentState?.save();
     print("Update complete");
    }
  }
  @override
  void initState() {
    _passwordFocusNode=FocusNode();
    _confirmPasswordFocusNode=FocusNode();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    var watch = Provider.of<ResetPasswordProvider>(context, listen: true);
    var read = Provider.of<ResetPasswordProvider>(context, listen: false);

    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormDesign(
                    focusNode: _passwordFocusNode,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_confirmPasswordFocusNode),
                    validator: (input) => input?.validatePassword(input),
                    controller: _passwordController,
                    title: "Password",
                  ),
                  FormDesign(
                    validator: (value){
                      if(value==""){return "This field can not be empty";}
                      else if(value!=_passwordController.text){
                        return"Confirm password is not the same";
                      }
                      return null;
                    },
                    focusNode: _confirmPasswordFocusNode,
                    onEditingComplete: () =>_onUpdateForm(),
                    controller: _confirmPasswordController,
                    title: "Confirm password",
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Button(
            callBack: () {
              read.checkTheSame(
                  _passwordController.text, _confirmPasswordController.text);
              _onUpdateForm();
              // context.read<ResetPasswordProvider>().notify(context);
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
