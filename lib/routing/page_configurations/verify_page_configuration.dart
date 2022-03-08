import 'package:base_flutter/routing/page_configurations/page_configuration.dart';

class VerifyCodePageConfiguration extends PageConfiguration {
  VerifyCodePageConfiguration(): super(key: 'verify', path: VerifyPath, uiPage: Pages.VerifyCode);

  factory VerifyCodePageConfiguration.fromLocation(String location){
    final config = VerifyCodePageConfiguration();
    final uri = Uri.parse(location);
    final pathSegments = uri.pathSegments;
    return config;
  }
}