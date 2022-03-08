import 'package:base_flutter/styles.dart';
import 'package:base_flutter/themes.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:provider/provider.dart';

import 'text_input_button.dart';

class ErrorInputMessage extends StatelessWidget {
  final String content;
  ErrorInputMessage(this.content);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);
    return TextFormField(
      enabled: false,
      readOnly: true,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Icon(Icons.info_outlined,
                color: Colors.white, size: FontSizes.s35),
          ),
          hintText: "Invalid Email or password",
          hintStyle: TextStyle(color: Colors.white),
          errorStyle: TextStyle(height: 0),
          focusColor: theme.blue,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: theme.blue, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0.w),
              )),
          fillColor: theme.blue,
          filled: true),
    );
  }
}
