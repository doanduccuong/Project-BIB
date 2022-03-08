import 'package:base_flutter/commands/base_command.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/shared/widgets/custom_dialog.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Text('設定')),
      body: ListView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        children: [
          InkWell(
            child: Text('ご利用ガイド', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
          ),
          Divider(),
          InkWell(
            child: Text('お問い合わせ', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
          ),
          Divider(),
          InkWell(
            child: Text('運営会社', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
          ),
          Divider(),
          InkWell(
            child: Text('利用規約', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
          ),
          Divider(),
          InkWell(
            child: Text('個人情報保護方針', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
          ),
          Divider(),
          InkWell(
            child: Text('ログアウト', style: TextStyle(color: Color(0xff707070), fontSize: 20)),
            onTap: () {
              showDialog(context: context, builder: (BuildContext context) {
                return CustomDialog(description: 'ログアウトしますか？', confirmAction: () {
                  
                });
              });
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}