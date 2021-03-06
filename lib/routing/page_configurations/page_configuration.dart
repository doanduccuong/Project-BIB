import 'package:base_flutter/routing/page_configurations/auth_page_configuration.dart';

import 'package:base_flutter/routing/page_configurations/home_page_configuration.dart';

const String AuthPath = '/auth';
const String HomePath = '/home';
const String MealPath = '/meal';
const String MealDetailPath = '/meal/:id';
const String InventoryPath = '/inventory';
const String ShoppingPath = '/shopping';

const String VerifyPath = '/verify';
const String VerifyCodePath = '/verify-code';

enum Pages {
  Authenticate,
  Home,
  Meal,
  MealDetail,
  Inventory,
  Shopping,
  Verify,
  VerifyCode
}

abstract class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;
  get location => this.path;

  const PageConfiguration(
      {required this.key, required this.path, required this.uiPage});

  factory PageConfiguration.fromLocation(String location) {
    location = Uri.decodeFull(location);
    final parsedUri = Uri.parse(location);
    final pathSegments = parsedUri.pathSegments;
    if (pathSegments.isEmpty) {
      return HomePageConfiguration.fromLocation(location);
    }
    final path = pathSegments[0];
    switch (path) {
      case AuthPath:
        return AuthPageConfiguration.fromLocation(location);
      default:
        return HomePageConfiguration.fromLocation(location);
    }
  }

  List<PageConfiguration> get pageTree => [this];
}
