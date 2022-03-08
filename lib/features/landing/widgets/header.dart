import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Positioned(
            top: -width / 2,
            left: width / 2,
            child: Container(
              width: width,
              height: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFFABA03)),
            ),
          ),
          Positioned(
            top: -width / 2 - 50.h,
            child: Container(
              width: width,
              height: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF654CEF)),
            ),
          ),
          Positioned(
            left: -width / 2,
            top: -width / 2,
            child: Container(
              width: width,
              height: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF16D8B6)),
            ),
          ),
          SizedBox(height: width / 2)
        ],
      ),
    );
  }
}
