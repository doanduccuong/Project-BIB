import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:base_flutter/features/verify_code/pages/verify_code_page.dart';
class VerifyPage extends StatefulWidget {
  VerifyPage({Key? key}) : super(key: key);

  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(title: Text('電話番号認証'), customBackButton: true),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                        child: Container(
                      margin: EdgeInsets.symmetric(vertical: 55.h),
                      width: 140.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          border: Border.all(color: Color(0xff707070))),
                      child: Center(child: Text('ロゴ')),
                    )),
                    createTextField(hintText: '電話番号'),
                    SizedBox(height: 16.h),
                    RoundedButton(text: '電話番号認証を行う', onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VerifyCodePage(),
                          ));
                    })
                  ],
                ))));
  }
}