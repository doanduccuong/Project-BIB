import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../configs/colors.dart';

class Utility{
  generateBorderRadius(int index,int selectedTab) {
    if ((index + 1) == selectedTab)
      return BorderRadius.only(
        topLeft: Radius.circular(4.0),
        topRight: Radius.circular(4.0),
      );
    else if ((index - 1) == selectedTab)
      return BorderRadius.only(bottomLeft: Radius.circular(4.0));
    else
      return BorderRadius.zero;
  }
  getTab(index, child,int selectedTab) {
    return Tab(
      child: SizedBox.expand(
        child: Container(
          alignment: Alignment.center,
          child: child,
          decoration: BoxDecoration(
              color: (selectedTab == index
                  ? AppColors.dPrimaryColor
                  : AppColors.fillColor),
              borderRadius: generateBorderRadius(index,selectedTab),
              border: selectedTab == index
                  ? Border.all(color: AppColors.bPrimaryColor)
                  : null,),
        ),
      ),
    );
  }
}