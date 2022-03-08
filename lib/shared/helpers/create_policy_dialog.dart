import 'package:base_flutter/static_pages/privacy_view.dart';
import 'package:base_flutter/static_pages/term_condition_view.dart';
import 'package:flutter/material.dart';

void createPolicyDialog(BuildContext context) => showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => PolicyView());

void createTermDialog(BuildContext context) => showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          TermConditionView());
