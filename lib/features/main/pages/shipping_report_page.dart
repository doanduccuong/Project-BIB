import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShippingReportPage extends StatefulWidget {
  ShippingReportPage({Key? key}) : super(key: key);

  @override
  _ShippingReportPageState createState() => _ShippingReportPageState();
}

class _ShippingReportPageState extends State<ShippingReportPage> {
  final style23 = TextStyle(fontSize: FontSizes.s23, color: Color(0xff707070));
  final style21 = TextStyle(fontSize: FontSizes.s21, color: Color(0xff707070));
  final style20 = TextStyle(fontSize: FontSizes.s20, color: Color(0xff707070));
  final style19 = TextStyle(fontSize: FontSizes.s19, color: Color(0xff17C6BC));
  final style18 = TextStyle(fontSize: FontSizes.s18, color: Color(0xff707070));
  final style14 = TextStyle(fontSize: FontSizes.s14, color: Color(0xff17C6BC));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Text('報告確認'), customBackButton: true),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
            SizedBox(height: 10),
            _buildSection1(),
            _buildSection2(),
            _buildSection3(),
            _buildSection4(),
            _buildSection5(),
            _buildSection6(),
            _buildSection7(),
            _buildBottom()
          ])),
    );
  }

  bool photoAtTimeAdmission = false;
  bool photoBeforeWork = false;
  bool photoSlip = false;
  bool photoOfProblem = false;

  Widget _buildSection1() {
    return Container(
      padding: EdgeInsets.all(10),
      color: photoAtTimeAdmission == true
          ? Color(0xff17C6BC).withOpacity(0.2)
          : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('作業開始時刻', style: style19),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff707070))),
                  height: 32,
                  width: 60,
                  child: TextFormField())
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('作業終了時刻', style: style19),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff707070))),
                  height: 32,
                  width: 60,
                  child: TextFormField())
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                  side: BorderSide(color: Color(0xff707070)),
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  value: photoAtTimeAdmission,
                  onChanged: (val) {
                    setState(() {
                      photoAtTimeAdmission = val ?? false;
                    });
                  }),
              Expanded(child: Text('入場時台帳写真', style: style19)),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('削除'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
                    backgroundColor: Colors.white),
              )
            ],
          ),
          Image.network(
            'https://via.placeholder.com/200x150',
            width: 200,
            height: 150,
          )
        ],
      ),
    );
  }

  Widget _buildSection2() {
    return Container(
        padding: EdgeInsets.all(10),
        color: photoBeforeWork == true
            ? Color(0xff17C6BC).withOpacity(0.2)
            : Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Checkbox(
                  side: BorderSide(color: Color(0xff707070)),
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  value: photoBeforeWork,
                  onChanged: (val) {
                    setState(() {
                      photoBeforeWork = val ?? false;
                    });
                  }),
              Expanded(child: Text('作業前の荷物状態写真', style: style19)),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('追加'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
                    backgroundColor: Colors.white),
              ),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('削除'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
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
                ),
                SizedBox(width: 10),
                Image.network(
                  'https://via.placeholder.com/200x150',
                  width: 200,
                  height: 150,
                )
              ]))
        ]));
  }

  Widget _buildSection3() {
    return Container(
        padding: EdgeInsets.all(10),
        color: photoSlip == true
            ? Color(0xff17C6BC).withOpacity(0.2)
            : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                    side: BorderSide(color: Color(0xff707070)),
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    value: photoSlip,
                    onChanged: (val) {
                      setState(() {
                        photoSlip = val ?? false;
                      });
                    }),
                Expanded(child: Text('伝票写真', style: style19)),
                InkWell(
                  onTap: () {},
                  child: Chip(
                      label: Text('削除'),
                      labelStyle: style19,
                      side: BorderSide(color: Color(0xff17C6BC)),
                      backgroundColor: Colors.white),
                )
              ],
            ),
            Image.network(
              'https://via.placeholder.com/200x150',
              width: 200,
              height: 150,
            ),
          ],
        ));
  }

  Widget _buildSection4() {
    return Container(
        padding: EdgeInsets.all(10),
        color: Color(0xff17C6BC).withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              Expanded(child: Text('センター都合での待機時間', style: style19)),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('編集'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
                    backgroundColor: Colors.white),
              )
            ]),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff707070))),
                height: 32,
                width: 60,
                child: TextFormField())
          ],
        ));
  }

  Widget _buildSection5() {
    return Container(
        padding: EdgeInsets.all(10),
        color: Color(0xff17C6BC).withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              Expanded(child: Text('付帯作業', style: style19)),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('編集'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
                    backgroundColor: Colors.white),
              )
            ]),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff707070))),
                height: 32,
                width: 60,
                child: TextFormField())
          ],
        ));
  }

  Widget _buildSection6() {
    return Container(
        color: Color(0xff17C6BC).withOpacity(0.2),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xff707070)), color: Colors.white),
          child: Column(
            children: [
              Container(
                  height: 34,
                  decoration: BoxDecoration(
                      color: Color(0xffB9B8B8),
                      border:
                          Border(bottom: BorderSide(color: Color(0xff707070)))),
                  child: Center(
                      child: Text('納品チェック',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15)))),
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
        ));
  }

  Widget _buildSection7() {
    return Container(
        padding: EdgeInsets.all(10),
        color: photoOfProblem == true
            ? Color(0xff17C6BC).withOpacity(0.2)
            : Colors.white,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              Checkbox(
                  side: BorderSide(color: Color(0xff707070)),
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  value: photoOfProblem,
                  onChanged: (val) {
                    setState(() {
                      photoOfProblem = val ?? false;
                    });
                  }),
              Expanded(child: Text('荷物に問題あり', style: style19)),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('追加'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
                    backgroundColor: Colors.white),
              ),
              InkWell(
                onTap: () {},
                child: Chip(
                    label: Text('削除'),
                    labelStyle: style19,
                    side: BorderSide(color: Color(0xff17C6BC)),
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
              height: 140,
              width: 60,
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: '問題発生時の状況について報告してください'),
              )),
          SizedBox(height: 30),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xff707070))),
              height: 100,
              width: 60,
              child: TextFormField(
                maxLines: 5,
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'サイン'),
              ))
        ]));
  }

  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('荷物に問題あり', style: style19.copyWith(color: Color(0xff707070))),
          RatingBar.builder(
            initialRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemSize: 50,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          SizedBox(height: 20),
          RoundedButton(text: '会社に送信'),
          SizedBox(height: 10),
          RoundedButton(text: 'キャンセル')
        ],
      ),
    );
  }
}
