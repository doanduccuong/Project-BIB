import 'package:base_flutter/shared/widgets/policy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';

class PolicyView extends StatelessWidget {
  static const String route = '/policy';

  Widget build(BuildContext context) {
    return PolicyDialog(
        title: 'auth.privacyPolicy'.translate(context),
        description: 'auth.privacyPolicyData'.translate(context));
  }
}
