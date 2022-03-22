import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final String? initialValue;
  final List<TextInputFormatter>? inputFormat;
  final TextInputType? keyboardType;
  final double? requiredTileFontSize;
  FormDesign({
    Key? key,
    required this.controller,
    this.width,
    this.obscureText,
    this.keyboardType,
    this.requiredTileFontSize,
    this.inputFormat,
    this.height,
    this.initialValue,
    required this.title,
    this.onEditingComplete,
    this.suffixIcon,
    this.focusNode,
    this.isRequired = true,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(

            keyboardType: keyboardType,
            inputFormatters: inputFormat,
            obscureText: obscureText ?? false,
            onEditingComplete: onEditingComplete,
            focusNode: null ?? focusNode,
            validator: validator,
            controller: controller,
            style: TextStyle(
              color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 12
            ),
            decoration: InputDecoration(

              label: RequiredTitle(
                fontSize: 14,
                title: title,
                isRequired: isRequired,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE9EAF4),
                ),
              ),
              isDense: true,
              contentPadding: EdgeInsets.only(bottom: 10,top: 2),
              fillColor: AppColors.textPrimaryColor,
              suffixIcon: suffixIcon,
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 9.8, maxWidth: 16),
            ),
          )
        ],
      ),
    );
  }
}
