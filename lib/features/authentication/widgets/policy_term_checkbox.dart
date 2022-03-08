import 'package:base_flutter/styles.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import 'package:flutter/material.dart';

class PolicyTermCheckbox extends StatelessWidget {
  final bool showCheckbox;
  final bool initValue;
  final Function? onChanged;
  PolicyTermCheckbox(
      {this.showCheckbox = true, this.onChanged, this.initValue = false});
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      if (showCheckbox == true)
        Checkbox(
          checkColor: Colors.black,
          value: initValue,
          onChanged: (value) {
            onChanged!(value);
          },
        ),
      Expanded(
          child: RichText(
              textAlign: TextAlign.center,
              maxLines: 2,
              text: TextSpan(children: [
                TextSpan(
                  style: (TextStyles.normal.copyWith(color: Colors.black)),
                  text: 'auth.acceptPolicy'.translate(context),
                ),
                WidgetSpan(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
                      child: Text('auth.privacyPolicy'.translate(context),
                          style: TextStyles.normalUnderline),
                    ),
                  ),
                ),
                TextSpan(
                    text: 'auth.and'.translate(context),
                    style: TextStyles.normal.copyWith(color: Colors.black)),
                WidgetSpan(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 0),
                      child: Text('auth.termsOfUse'.translate(context),
                          style: TextStyles.normalUnderline),
                    ),
                  ),
                ),
              ])))
    ]);
  }
}
