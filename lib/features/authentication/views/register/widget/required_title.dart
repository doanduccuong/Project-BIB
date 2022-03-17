import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/material.dart';

class RequiredTitle extends StatelessWidget {
  final String title;
  final bool? isRequired;
  final double? fontSize;
  RequiredTitle({
    Key? key,
    required this.title,
    this.isRequired = true,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: fontSize??12,
          color: AppColors.aPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        children: <TextSpan>[
          TextSpan(text: title),
          isRequired == true
              ? TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                )
              : TextSpan(text: ''),
        ],
      ),
    );
  }
}
