import 'dart:async';
import 'dart:io';

import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

// A screen that allows users to take a picture using a given camera.
class CameraViewPage extends StatefulWidget {
  const CameraViewPage({Key? key, required this.camera, required this.title})
      : super(key: key);

  final String title;
  final CameraDescription camera;

  @override
  CameraViewPageState createState() => CameraViewPageState();
}

class CameraViewPageState extends State<CameraViewPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: Text(widget.title), customBackButton: true),
        // You must wait until the controller is initialized before displaying the
        // camera preview. Use a FutureBuilder to display a loading spinner until the
        // controller has finished initializing.
        body: FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the Future is complete, display the preview.
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(child: CameraPreview(_controller)),
                          SizedBox(height: 10),
                          Row(children: [
                            Expanded(
                                child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xff17C6BC),
                                  borderRadius: BorderRadius.circular(24)),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('完了',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ),
                              ),
                            )),
                            SizedBox(width: 40),
                            Expanded(
                                child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Color(0xff17C6BC),
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: MaterialButton(
                                        onPressed: () async {
                                          // Take the Picture in a try / catch block. If anything goes wrong,
                                          // catch the error.
                                          try {
                                            // Ensure that the camera is initialized.
                                            await _initializeControllerFuture;

                                            // Attempt to take a picture and get the file `image`
                                            // where it was saved.
                                            final image =
                                                await _controller.takePicture();
                                            Navigator.of(context)
                                                .pop({'image': image.path});
                                          } catch (e) {
                                            // If an error occurs, log the error to the console.
                                            print(e);
                                          }
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('再撮影',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white)),
                                        ))))
                          ])
                        ]));
              } else {
                // Otherwise, display a loading indicator.
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
