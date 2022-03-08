import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';

class DeliveryCheckPage extends StatefulWidget {
  DeliveryCheckPage({Key? key}) : super(key: key);

  @override
  _DeliveryCheckPageState createState() => _DeliveryCheckPageState();
}

class _DeliveryCheckPageState extends State<DeliveryCheckPage> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  final style19 = TextStyle(fontSize: FontSizes.s19, color: Color(0xff707070));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('納品チェック'), customBackButton: true),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              deliveryItem((val) {
                setState(() {
                  value1 = val ?? false;
                });
              }, 'パレットに姿外観(正常)', value1),
              deliveryItem((val) {
                setState(() {
                  value2 = val ?? false;
                });
              }, 'シュリンク外観汚れ状態(正常)', value2),
              deliveryItem((val) {
                setState(() {
                  value3 = val ?? false;
                });
              }, 'ラベル内容確認及び添付状態(正常)', value3),
              deliveryItem((val) {
                setState(() {
                  value4 = val ?? false;
                });
              }, '製品の異臭(正常)', value4),
              deliveryItem((val) {
                setState(() {
                  value5 = val ?? false;
                });
              }, '車両の状況及び温度(正常)', value5),
              SizedBox(height: 60),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xff17C6BC),
                        border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(0)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ドライバーの評価を入力',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  )),
              SizedBox(height: 60),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Chip(
                            label: Text('クリア'),
                            labelStyle: style19,
                            side: BorderSide(color: Color(0xff707070)),
                            backgroundColor: Colors.white),
                      ))),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff707070))),
                      child: TextFormField(
                        maxLines: 4,
                      ))),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: RoundedButton(
                      text: '納品確定',
                      backgroundColor: Color(0xff17C6BC),
                      onPressed: () {}))
            ],
          ),
        ));
  }

  Widget deliveryItem(Function(bool?) onChanged, String title, bool status) {
    return Container(
      color: status == true ? Color(0xff17C6BC).withOpacity(0.1) : Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(
                side: BorderSide(color: Color(0xff707070)),
                checkColor: Colors.black,
                activeColor: Colors.white,
                value: status,
                onChanged: onChanged),
            Expanded(
                child: Text(title,
                    maxLines: 2,
                    style: TextStyle(
                        color: status == true
                            ? Color(0xff17C6BC)
                            : Color(0xff707070),
                        fontSize: 19)))
          ],
        ),
      ),
    );
  }
}
