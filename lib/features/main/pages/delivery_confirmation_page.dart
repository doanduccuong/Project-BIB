import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:base_flutter/features/main/pages/delivery_check_page.dart';
import 'package:base_flutter/features/main/pages/photo_preview_page.dart';
import 'package:base_flutter/features/main/pages/shipping_report_page.dart';

class DeliveryConfirmationPage extends StatefulWidget {
  DeliveryConfirmationPage({Key? key}) : super(key: key);

  @override
  _DeliveryConfirmationPageState createState() =>
      _DeliveryConfirmationPageState();
}

class _DeliveryConfirmationPageState extends State<DeliveryConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('納品前確認画面'), customBackButton: true),
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RoundedButton(
                      text: '納品チェック',
                      backgroundColor: Color(0xff17C6BC),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DeliveryCheckPage(),
                        ));
                      }),
                  SizedBox(height: 30),
                  RoundedButton(
                      text: '伝票写真撮影',
                      backgroundColor: Color(0xff17C6BC),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PhotoPreviewPage(title: '伝票写真撮影'),
                        ));
                      }),
                  SizedBox(height: 30),
                  RoundedButton(
                      text: '破損時の荷物状態撮影',
                      backgroundColor: Color(0xff17C6BC),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PhotoPreviewPage(title: '破損時の荷物状態撮影'),
                        ));
                      }),
                  SizedBox(height: 30),
                  RoundedButton(
                      text: '作業報告',
                      backgroundColor: Color(0xff17C6BC),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShippingReportPage(),
                        ));
                      })
                ])));
  }
}
