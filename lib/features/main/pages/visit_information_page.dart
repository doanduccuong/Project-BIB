import 'package:base_flutter/shared/widgets/app_text_field_form.dart';
import 'package:base_flutter/styles.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:base_flutter/features/main/pages/work_confirmation_page.dart';
import 'package:base_flutter/features/main/pages/time_setting_page.dart';
import 'package:base_flutter/features/main/pages/delivery_confirmation_page.dart';

class VisitInformationPage extends StatefulWidget {
  VisitInformationPage({Key? key}) : super(key: key);

  @override
  _VisitInformationPageState createState() => _VisitInformationPageState();
}

class _VisitInformationPageState extends State<VisitInformationPage> {
  final style23 = TextStyle(fontSize: FontSizes.s23, color: Color(0xff707070));
  final style21 = TextStyle(fontSize: FontSizes.s21, color: Color(0xff707070));
  final style20 = TextStyle(fontSize: FontSizes.s20, color: Color(0xff707070));
  final style19 = TextStyle(fontSize: FontSizes.s19, color: Color(0xff707070));
  final style18 = TextStyle(fontSize: FontSizes.s18, color: Color(0xff707070));

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text('来場案内'), customBackButton: true),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Text('- 集荷作業 -',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff707070)),
                      textAlign: TextAlign.center),
                  Text('名称', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Text('住所', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Container(
                      height: 350,
                      child: GoogleMap(
                          myLocationButtonEnabled: false,
                          zoomGesturesEnabled: false,
                          zoomControlsEnabled: false,
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          })),
                  SizedBox(height: 10),
                  Text('電話番号', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Text('集荷日', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Text('集荷時刻(時間指定あり)', style: style20),
                  createTextField(maxLines: 3),
                  SizedBox(height: 10),
                  Text('作業場所詳細', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Text('積み込み条件', style: style20),
                  createTextField(),
                  SizedBox(height: 10),
                  Text('車番/重量/トラック名', style: style20),
                  createTextField(),
                  SizedBox(height: 30),
                  Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                              child: StateButton('確認',
                                  isEnable: true, onPressed: () {})),
                          SizedBox(width: 10),
                          Expanded(
                              child: StateButton('到着', isEnable: false,
                                  onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WorkConfirmationPage(),
                            ));
                          })),
                          SizedBox(width: 10),
                          Expanded(
                              child: StateButton('納品', isEnable: false,
                                  onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DeliveryConfirmationPage(),
                            ));
                          }))
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                              child: StateButton('入場時刻', isEnable: false,
                                  onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TimeSettingPage(),
                            ));
                          })),
                          SizedBox(width: 10),
                          Expanded(
                              child: StateButton('作業開始', isEnable: false,
                                  onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TimeSettingPage(),
                            ));
                          })),
                          SizedBox(width: 10),
                          Expanded(
                              child: StateButton('作業終了', isEnable: false,
                                  onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TimeSettingPage(),
                            ));
                          }))
                        ],
                      ))
                ],
              )),
        ));
  }
}

class StateButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final bool isEnable;

  StateButton(this.title, {this.onPressed, required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: isEnable ? Color(0xff17C6BC) : Color(0xffE3E3E3),
          side: BorderSide(color: Color(0xff707070)),
          textStyle: TextStyle(fontSize: 21)),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4), child: Text(title)),
      onPressed: onPressed,
    );
  }
}
