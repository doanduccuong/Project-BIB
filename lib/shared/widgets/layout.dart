import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';

class LayoutAuthPage extends StatelessWidget {
  final List<Widget>? children;
  LayoutAuthPage({this.children});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: -182.h - width * 0.7,
                left: -0.25 * width,
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  alignment: Alignment.bottomCenter,
                  height: width * 1.5,
                  width: width * 1.5,
                  child: Container(
                    width: 118.w,
                    height: 91.h,
                    child: Image.asset(
                      "assets/images/icons/logo-icon.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                  // color: Colors.yellow,
                  child: SizedBox(height: 180.h, width: width))
            ],
          ),
          Expanded(child: Column(children: children ?? [])),
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Positioned(
                left: -width / 2,
                top: 0,
                child: Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFABA03)),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF654CEF)),
                ),
              ),
              Positioned(
                top: 0,
                left: width / 2,
                child: Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF16D8B6)),
                ),
              ),
              SizedBox(height: 40.h, width: width)
            ],
          ),
        ],
      ),
    );
  }
}
