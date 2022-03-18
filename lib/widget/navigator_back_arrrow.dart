import 'package:base_flutter/configs/colors.dart';

import 'package:flutter/material.dart';

class NavigatorBackArrow extends StatelessWidget {
  final Color? iconColor;
   NavigatorBackArrow({Key? key,this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Icon(
        Icons.arrow_back,
        color: iconColor??AppColors.startGradient,
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
