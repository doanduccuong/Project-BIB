import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/features/main/pages/photo_preview_page.dart';

class WorkConfirmationPage extends StatefulWidget {
  WorkConfirmationPage({Key? key}) : super(key: key);

  @override
  _WorkConfirmationPageState createState() => _WorkConfirmationPageState();
}

class _WorkConfirmationPageState extends State<WorkConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('到着時作業確認'), customBackButton: true),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RoundedButton(
                        text: '入場時台帳撮影',
                        backgroundColor: Color(0xff17C6BC),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                PhotoPreviewPage(title: '入場時台帳撮影'),
                          ));
                        }),
                    SizedBox(height: 40),
                    RoundedButton(
                        text: '荷物状態撮影',
                        backgroundColor: Color(0xff17C6BC),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                PhotoPreviewPage(title: '荷物状態撮影'),
                          ));
                        })
                  ],
                ))));
  }
}
