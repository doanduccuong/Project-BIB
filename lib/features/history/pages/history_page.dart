import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';
import 'package:base_flutter/features/history/pages/shipping_detail_page.dart';
import 'package:base_flutter/features/history/pages/work_history_page.dart';

class HistoryPage extends StatefulWidget {
  final bool isDriver;
  HistoryPage({Key? key, required this.isDriver}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Text(widget.isDriver ? '作業履歴' : '出荷履歴一覧')),
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
              )),
              Expanded(
                  child: Row(
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                  Text('住所',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14))
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Text('特記事項',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14))
                ],
              ))
            ],
          ),
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WorkHistoryPage(),
                        ));
                      },
                      child: Row(children: [
                        Expanded(
                            child: Text('2021/07/20 10:00',
                                textAlign: TextAlign.center)),
                        Expanded(
                            child:
                                Text('山梨県甲府市湯田', textAlign: TextAlign.center)),
                        Container(
                            width: 60,
                            child: Chip(
                                label: Text('待機'),
                                labelStyle: TextStyle(color: Colors.white),
                                backgroundColor: Color(0xff17c6bc)),
                            alignment: Alignment.center),
                        Container(
                            width: 60,
                            child: Chip(
                                label: Text('付帯'),
                                labelStyle: TextStyle(color: Colors.white),
                                backgroundColor: Color(0xff17c6bc)),
                            alignment: Alignment.center)
                      ]));
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 20);
                },
                itemCount: 10))
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                  Text('日付',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14))
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                  Text('納品先',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14))
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 30),
                  Text('納品物',
                      style: TextStyles.h5
                          .copyWith(color: Colors.white, fontSize: 14))
                ],
              ))
            ],
          ),
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShippingDetailPage(),
                        ));
                      },
                      child: Row(children: [
                        Expanded(
                            child: Text('2021/07/20 10:00',
                                textAlign: TextAlign.center)),
                        Expanded(
                            child:
                                Text('物流センターA', textAlign: TextAlign.center)),
                        Expanded(
                            child: Text('商品E', textAlign: TextAlign.center)),
                      ]));
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 30);
                },
                itemCount: 10))
      ],
    );
  }
}
