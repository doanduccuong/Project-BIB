import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';
class ProductList  extends StatelessWidget {
  const ProductList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.textColor,
            borderRadius: BorderRadius.circular(10)),
        height: 190,
        width: 335,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: TextBold(
                title: 'Latest Transactions',
                size: 16,
                colors: AppColors.textPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
