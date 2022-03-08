
import 'package:base_flutter/routing/page_configurations/page_configuration.dart';

class VerifyPageConfiguration extends PageConfiguration {
  VerifyPageConfiguration(): super(key: 'verify-code', path: VerifyCodePath, uiPage: Pages.VerifyCode);

  factory VerifyPageConfiguration.fromLocation(String location){
    final config = VerifyPageConfiguration();
    final uri = Uri.parse(location);
    final pathSegments = uri.pathSegments;
    return config;
  }
}