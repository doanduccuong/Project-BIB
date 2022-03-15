import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';

class FormDesign extends StatelessWidget {
  double? height;
  double? width;
  String title;
  Widget? suffixIcon;

  TextEditingController controller;
  FormDesign({
    Key? key,
    required this.controller,
    this.width,
    this.height,
    required this.title,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RequiredTitle(title: title),
          Container(
            height: height ?? 31,
            child: TextFormField(
              controller: controller,
              style: TextStyle(
                color: AppColors.textPrimaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE9EAF4),
                  ),
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(bottom: 10),
                fillColor: AppColors.textPrimaryColor,
                suffixIcon: suffixIcon,
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 6.8, maxWidth: 10.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
