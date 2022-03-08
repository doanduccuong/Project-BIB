import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Text('マイページ'), customBackButton: true),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          RichText(
              text: TextSpan(
                  text: '※',
                  style: TextStyle(color: Colors.red, fontSize: 11),
                  children: [
                TextSpan(
                    text: '…入力必須', style: TextStyle(color: Color(0xff707070)))
              ])),
          RichText(
              text: TextSpan(
                  text: '■所属会社',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          Row(
            children: [
              Expanded(child: createTextField()),
              RoundedButton(text: '検索', backgroundColor: Color(0xff707070))
            ],
          ),
          SizedBox(height: 4),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■姓',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■名',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■姓(カナ)',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■名(カナ)',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■電話番号',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: '■メールアドレス',
                  style: TextStyle(color: Color(0xff707070), fontSize: 17),
                  children: [
                TextSpan(text: '※', style: TextStyle(color: Colors.red))
              ])),
          createTextField(),
          SizedBox(height: 20),
          RoundedButton(
              text: '更新', style: TextStyle(fontSize: 20), onPressed: () {}),
        ],
      ),
    );
  }
}
