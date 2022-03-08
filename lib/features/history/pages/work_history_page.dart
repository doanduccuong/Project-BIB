import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';

class WorkHistoryPage extends StatefulWidget {
  WorkHistoryPage({Key? key}) : super(key: key);

  @override
  _WorkHistoryPageState createState() => _WorkHistoryPageState();
}

class _WorkHistoryPageState extends State<WorkHistoryPage> {
  final style23 = TextStyle(fontSize: FontSizes.s23, color: Color(0xff707070));
  final style21 = TextStyle(fontSize: FontSizes.s21, color: Color(0xff707070));
  final style20 = TextStyle(fontSize: FontSizes.s20, color: Color(0xff707070));
  final style19 = TextStyle(fontSize: FontSizes.s19, color: Color(0xff707070));
  final style18 = TextStyle(fontSize: FontSizes.s18, color: Color(0xff707070));
  final style14 = TextStyle(fontSize: FontSizes.s14, color: Color(0xff707070));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('作業履歴詳細'), customBackButton: true),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '丸市倉庫20号物流センター',
                    style: style23,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        '〒408-0301 山梨県北杜市武川町三吹1503\n📞551203050',
                        style: style14.copyWith(color: Color(0xff707070)),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(height: 20),
                  Row(children: [
                    Expanded(child: Text('作業開始時刻', style: style21)),
                    Expanded(child: createTextField())
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(child: Text('納品チェック時刻', style: style21)),
                    Expanded(child: createTextField())
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(child: Text('待機時間', style: style21)),
                    Expanded(child: createTextField())
                  ]),
                  SizedBox(height: 10),
                  Text('付帯作業', style: style21),
                  createTextField(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('入場時台帳写真', style: style21),
                      InkWell(
                        onTap: () {},
                        child: Chip(
                            label: Text('削除'),
                            labelStyle: style19,
                            side: BorderSide(color: Color(0xff707070)),
                            backgroundColor: Colors.white),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Image.network(
                        'https://via.placeholder.com/200x150',
                        width: 200,
                        height: 150,
                      )),
                  SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text('荷物状態写真', style: style21)),
                      InkWell(
                        onTap: () {},
                        child: Chip(
                            label: Text('追加'),
                            labelStyle: style19,
                            side: BorderSide(color: Color(0xff707070)),
                            backgroundColor: Colors.white),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Chip(
                            label: Text('削除'),
                            labelStyle: style19,
                            side: BorderSide(color: Color(0xff707070)),
                            backgroundColor: Colors.white),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        )
                      ])),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('伝票写真', style: style21),
                      InkWell(
                        onTap: () {},
                        child: Chip(
                            label: Text('削除'),
                            labelStyle: style19,
                            side: BorderSide(color: Color(0xff707070)),
                            backgroundColor: Colors.white),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Image.network(
                        'https://via.placeholder.com/200x150',
                        width: 200,
                        height: 150,
                      )),
                  SizedBox(height: 20),
                  _buildDeliveryCheckTable(),
                  SizedBox(height: 10),
                  Text('破損等の荷物写真', style: style21),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          'https://via.placeholder.com/200x150',
                          width: 200,
                          height: 150,
                        )
                      ])),
                  SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xff707070))),
                      height: 100,
                      width: 60,
                      child: TextFormField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'サイン'),
                      )),
                ])));
  }

  Widget _buildDeliveryCheckTable() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Color(0xff707070))),
      child: Column(
        children: [
          Container(
              height: 34,
              decoration: BoxDecoration(
                  color: Color(0xffB9B8B8),
                  border: Border(bottom: BorderSide(color: Color(0xff707070)))),
              child: Center(
                  child: Text('納品チェック',
                      style: TextStyle(color: Colors.white, fontSize: 15)))),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(child: Text('パレットに姿外観', style: style18)),
                  Container(width: 1, height: 40, color: Color(0xff707070)),
                  Container(
                      width: 40,
                      child: Text('◯',
                          style: style18, textAlign: TextAlign.center))
                ],
              )),
          Container(height: 1, color: Color(0xff707070)),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(child: Text('シュリンク外観汚れ状態', style: style18)),
                  Container(width: 1, height: 40, color: Color(0xff707070)),
                  Container(
                      width: 40,
                      child: Text('◯',
                          style: style18, textAlign: TextAlign.center))
                ],
              )),
          Container(height: 1, color: Color(0xff707070)),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(child: Text('ラベル内容確認及び添付状態', style: style18)),
                  Container(width: 1, height: 40, color: Color(0xff707070)),
                  Container(
                      width: 40,
                      child: Text('×',
                          style: style18, textAlign: TextAlign.center))
                ],
              )),
          Container(height: 1, color: Color(0xff707070)),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(child: Text('製品の異臭', style: style18)),
                  Container(width: 1, height: 40, color: Color(0xff707070)),
                  Container(
                      width: 40,
                      child: Text('◯',
                          style: style18, textAlign: TextAlign.center))
                ],
              )),
          Container(height: 1, color: Color(0xff707070)),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(child: Text('車両の状況及び温度', style: style18)),
                  Container(width: 1, height: 40, color: Color(0xff707070)),
                  Container(
                      width: 40,
                      child: Text('◯',
                          style: style18, textAlign: TextAlign.center))
                ],
              )),
        ],
      ),
    );
  }
}
