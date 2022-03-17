
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';

class FormDesign extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final Widget? suffixIcon;
  final bool? isRequired;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final Function()? onEditingComplete;
  final bool? obscureText;
  FormDesign({
    Key? key,
    required this.controller,
    this.width,
    this.obscureText,
    this.height,
    required this.title,
    this.onEditingComplete,
    this.suffixIcon,
    this.focusNode,
    this.isRequired,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RequiredTitle(title: title,isRequired: isRequired,),
          SizedBox(height: 10,),
          Container(
            height: height ?? 31,
            child: TextFormField(
              obscureText: obscureText??false,
              onEditingComplete: onEditingComplete,
              focusNode: null??focusNode,
              validator: validator,
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
