import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/shared/styled_widgets/dialogs/provider/base_dialog_provider.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';

class BaseStyledDialog extends StatefulWidget {
  const BaseStyledDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<BaseStyledDialog> createState() => _BaseStyledDialogState();
}

class _BaseStyledDialogState extends State<BaseStyledDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailIDController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailIDController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailIDController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var theme = context.watch<AppTheme>();
    return Dialog(
      backgroundColor: AppColors.textColor,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        height: 444,
        width: 335,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.ePrimaryColor,
              radius: 25,
              child: Image(
                image: AssetImage(AppImage.clock),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.center,
              height: 38,
              width: 208,
              child: TextNormal(
                isCenter: true,
                title: 'Your session has expried due to inactivity',
                size: 16,
                fontWeight: FontWeight.w500,
                colors: AppColors.fPrimaryColor,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextNormal(
                    title: 'Email Id',
                    size: 12,
                    colors: AppColors.aPrimaryColor,
                  ),
                  Container(
                    height: 20,
                    child: TextFormField(controller: _emailIDController),
                  ),
                  SizedBox(
                    height: 43.5,
                  ),
                  TextNormal(
                    title: 'Password',
                    size: 12,
                    colors: AppColors.aPrimaryColor,
                  ),
                  Container(
                    height: 20,
                    child: TextFormField(
                      controller: _passwordController,
                    ),
                  ),
                  SizedBox(
                    height: 30.5,
                  ),
                  Button(
                    title: 'Login',
                    backGroundColor: AppColors.fillColor,
                    textColor: AppColors.textColor,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppImage.group220ColorImage,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
