import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:base_flutter/features/home/home_page.dart';

class VerifyCodePage extends StatefulWidget {
  VerifyCodePage({Key? key}) : super(key: key);

  @override
  _VerifyCodePageState createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  late TapGestureRecognizer _tapPressRecognizer;

  @override
  void initState() {
    super.initState();
    _tapPressRecognizer = TapGestureRecognizer()..onTap = _handlePress;
  }

  @override
  void dispose() {
    _tapPressRecognizer.dispose();
    super.dispose();
  }

  void _handlePress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: Text('認証コード'), customBackButton: true),
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
                    border: Border.all(
                      color: Color(0xff707070),
                    ),
                  ),
                  child: Center(child: Text('ロゴ')),
                ),
              ),
              createTextField(hintText: '認証コード'),
              SizedBox(height: 16.h),
              RoundedButton(
                  text: '送信',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  }),
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'コードが届いていませんか？再送は',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'こちら',
                          recognizer: _tapPressRecognizer,
                          style: TextStyle(
                              color: Color(0xff5DA2FF),
                              decoration: TextDecoration.underline)),
                      TextSpan(text: 'から')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 80,
                  height: 40,
                  child: RoundedButton(
                    backgroundColor: Color(0xff707070),
                    text: '荷主',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
