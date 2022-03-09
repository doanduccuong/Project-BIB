import 'package:base_flutter/configs/colors.dart';

import 'package:flutter/material.dart';

Widget navigatorBackArrow(BuildContext context) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child:  Icon(
      Icons.arrow_back,
      color: AppColors.startGradient,
    ),
    onTap: () {
      Navigator.pop(context);
    },
  );
}
