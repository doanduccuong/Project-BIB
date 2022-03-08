import 'package:base_flutter/features/main/pages/camera_view_page.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';

class PhotoPreviewPage extends StatefulWidget {
  final String title;
  PhotoPreviewPage({Key? key, required this.title}) : super(key: key);

  @override
  _PhotoPreviewPageState createState() => _PhotoPreviewPageState();
}

class _PhotoPreviewPageState extends State<PhotoPreviewPage> {
  String? filePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text(widget.title), customBackButton: true),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: filePath == null
                      ? Container()
                      : Image.file(File(filePath!))),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color(0xff17C6BC),
                        borderRadius: BorderRadius.circular(24)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('戻る',
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                  )),
                  SizedBox(width: 40),
                  Expanded(
                      child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color(0xff17C6BC),
                        borderRadius: BorderRadius.circular(24)),
                    child: MaterialButton(
                      onPressed: () {
                        openCamera();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('撮影',
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                  ))
                ],
              )
            ],
          ),
        ));
  }

  void openCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Obtain a list of the available cameras on the device.
    final cameras = await availableCameras();
    // Get a specific camera from the list of available cameras.
    final firstCamera = cameras.first;
    var result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CameraViewPage(
              title: widget.title,
              camera: firstCamera,
            )));
    if (result != null) {
      setState(() {
        filePath = result['image'];
      });
    }
  }
}
