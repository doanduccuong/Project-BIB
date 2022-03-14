import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
   MenuIcon({Key? key,this.callBack}) : super(key: key);
  Function()? callBack;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
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
      ),
    );
  }
}
