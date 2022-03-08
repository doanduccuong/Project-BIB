import 'package:base_flutter/themes.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:provider/provider.dart';

class TextInputButton extends StatelessWidget {
  final String hintText;
  final Color? errorColor;
  final bool? readOnly;
  final errorBorder;
  TextInputButton(this.hintText,
      {this.errorColor, this.readOnly, this.errorBorder});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    return TextFormField(
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        errorStyle: TextStyle(height: 0),
        border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(20.0.w),
        )),
        fillColor: errorColor,
        filled: true,
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderSide: new BorderSide(color: theme.red, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(20.0.w))),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        return null;
      },
    );
  }
}
