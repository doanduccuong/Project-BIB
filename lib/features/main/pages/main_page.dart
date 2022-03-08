import 'package:base_flutter/styles.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/features/main/pages/visit_information_page.dart';

class MainPage extends StatefulWidget {
  final bool isDriver;
  MainPage({Key? key, required this.isDriver}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Text(widget.isDriver ? '来場案内一覧' : '出荷状況一覧')),
      body: widget.isDriver ? _buildDriverPage() : _buildCustomerPage(),
    );
  }

  Widget _buildDriverPage() {
    return Column(
      children: [
        Container(
          color: Color(0xffCECBCA),
          height: 30,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                    Text('日付',
                        style: TextStyles.h5
                            .copyWith(color: Colors.white, fontSize: 14))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                    Text('住所',
                        style: TextStyles.h5
                            .copyWith(color: Colors.white, fontSize: 14))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                    Text(
                      '作業内容',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VisitInformationPage(),
                    ));
                  },
                  child: Row(children: [
                    Expanded(
                        child: Text('2021/07/20 10:00',
                            textAlign: TextAlign.center)),
                    Expanded(
                        child: Text('山梨県甲府市湯田', textAlign: TextAlign.center)),
                    Container(
                        width: 60,
                        child: Text('配達'),
                        alignment: Alignment.center),
                    Container(
                        width: 60,
                        child: Chip(
                            label: Text('未読'),
                            labelStyle: TextStyle(color: Colors.white),
                            backgroundColor: Color(0xff17c6bc)),
                        alignment: Alignment.center)
                  ]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 10),
        )
      ],
    );
  }

  Widget _buildCustomerPage() {
    return Column(
      children: [
        Container(
          color: Color(0xffCECBCA),
          height: 30,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 24),
                    Text('日付',
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 24),
                    Text('納品先',
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 24),
                    Text('納品物',
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 24),
                    Text('配送ステータス',
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 5),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VisitInformationPage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('2021/07/20', textAlign: TextAlign.left),
                      ),
                      Expanded(
                        child: Text('物流センターA', textAlign: TextAlign.left),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        // width: 60,
                        child: Text('商品A', textAlign: TextAlign.left),
                      ),
                      Expanded(
                        // width: 60,
                        child: Chip(
                          label: Text('納品作業中'),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Color(0xff17c6bc),
                        ),
                        // alignment: Alignment.center
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 10),
        )
      ],
    );
  }
}
