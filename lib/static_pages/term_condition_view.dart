import 'package:base_flutter/shared/widgets/policy_dialog.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:flutter/material.dart';

class TermConditionView extends StatelessWidget {
  static const String route = '/term';

  Widget build(BuildContext context) {
    return PolicyDialog(
        title: 'auth.termCondition'.translate(context),
        description: 'auth.termConditionData'.translate(context));
  }
}
