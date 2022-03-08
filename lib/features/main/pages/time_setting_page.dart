import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/styles.dart';

class TimeSettingPage extends StatefulWidget {
  TimeSettingPage({Key? key}) : super(key: key);

  @override
  _TimeSettingPageState createState() => _TimeSettingPageState();
}

class _TimeSettingPageState extends State<TimeSettingPage> {
  final style20 = TextStyle(fontSize: FontSizes.s20, color: Color(0xff707070));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('入場時刻'), customBackButton: true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('入場時刻', style: style20),
              createTextField(),
              SizedBox(height: 30),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xff17C6BC),
                        borderRadius: BorderRadius.circular(0)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('入場時刻を設定する',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
