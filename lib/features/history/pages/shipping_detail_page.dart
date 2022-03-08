import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';

class ShippingDetailPage extends StatefulWidget {
  ShippingDetailPage({Key? key}) : super(key: key);

  @override
  _ShippingDetailPageState createState() => _ShippingDetailPageState();
}

class _ShippingDetailPageState extends State<ShippingDetailPage> {
  final style23 = TextStyle(fontSize: FontSizes.s23, color: Color(0xff707070));
  final style21 = TextStyle(fontSize: FontSizes.s21, color: Color(0xff707070));
  final style20 = TextStyle(fontSize: FontSizes.s20, color: Color(0xff707070));
  final style19 = TextStyle(fontSize: FontSizes.s19, color: Color(0xff707070));
  final style18 = TextStyle(fontSize: FontSizes.s18, color: Color(0xff707070));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('出荷状況確認'), customBackButton: true),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Text('♢商品の到着案内確認', style: style23),
            Text('納品先情報', style: style20),
            Divider(color: Color(0xff707070), height: 30),
            Row(children: [
              Expanded(child: Text('納品先名称', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('電話番号', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('メールアドレス', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('住所', style: style21)),
              Expanded(child: createTextField())
            ]),
            Divider(color: Color(0xff707070), height: 30),
            Text('ドライバー情報', style: style20),
            Divider(color: Color(0xff707070), height: 30),
            Row(children: [
              Expanded(child: Text('所属会社', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Text('氏名', style: style21)),
                Expanded(child: createTextField())
              ],
            ),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('電話番号', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('メールアドレス', style: style21)),
              Expanded(child: createTextField())
            ]),
            Divider(color: Color(0xff707070), height: 30),
            Text('荷物情報', style: style20),
            Divider(color: Color(0xff707070), height: 30),
            Row(children: [
              Expanded(child: Text('荷物名', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('作業開始時刻', style: style21)),
              Expanded(child: createTextField())
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(child: Text('配送ステータス', style: style21)),
              Expanded(child: createTextField())
            ]),
            Divider(color: Color(0xff707070), height: 30),
            for (var item in _buildConfirmationSection()) item
          ],
        )));
  }

  List<Widget> _buildConfirmationSection() {
    return [
      Text('納品情報', style: style20),
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
      Image.network(
        'https://via.placeholder.com/350x150',
        width: 400,
        height: 300,
      ),
      Row(
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
      Container(
          height: 350,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                "https://via.placeholder.com/288x188",
                fit: BoxFit.fill,
              );
            },
            itemCount: 10,
            viewportFraction: 1.0,
            scale: 1.0,
          )),
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
      Image.network(
        'https://via.placeholder.com/350x150',
        width: 400,
        height: 300,
      ),
      _buildDeliveryCheckTable(),
      SizedBox(height: 10),
      Container(
        decoration: BoxDecoration(border: Border.all(color: Color(0xff707070))),
        child: TextFormField(maxLines: 4),
      ),
      SizedBox(height: 10),
      Text('納品先評価', style: style18),
      RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: 50,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      SizedBox(height: 10),
      Text('ドライバーさんの態度・マナー', style: style18),
      RatingBar.builder(
        initialRating: 5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: 50,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      SizedBox(height: 30),
      RoundedButton(
              text: '承認',
              style: TextStyle(fontSize: 20),
              onPressed: () {
                
              }),
    ];
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
