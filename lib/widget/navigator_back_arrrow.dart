import 'package:base_flutter/configs/colors.dart';

import 'package:flutter/material.dart';

Widget navigatorBackArrow(BuildContext context) {
  return IconButton(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    icon: const Icon(
      Icons.arrow_back,
      color: AppColors.startGradient,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
