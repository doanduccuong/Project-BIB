import 'package:base_flutter/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

extension TranslateExtension on String {
  String translate(BuildContext context) =>
      AppLocalizations.of(context)?.translate(this) ?? this;
}
