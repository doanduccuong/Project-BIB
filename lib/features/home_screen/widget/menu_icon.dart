import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 2,
            width: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: AppColors.textColor,
            ),
          ),
          Container(
            height: 2,
            width: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: AppColors.textColor,
            ),
          ),
          Container(
            height: 2,
            width: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
