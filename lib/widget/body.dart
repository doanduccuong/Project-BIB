import 'package:base_flutter/commands/base_command.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';

class Body extends StatelessWidget {
  final Widget? child;

  Body({this.child});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: Insets.lg.h),
          width: width,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                  top: 0,
                  child: Container(
                    width: width * 2,
                    height: width * 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.red,
                    ),
                  )),
              SizedBox(height: 60.h)
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: width,
            color: Color(0xFFFE0232),
            child: child ?? SizedBox(),
          ),
        ),
      ],
    );
  }
}
