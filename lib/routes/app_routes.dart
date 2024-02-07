import 'package:flutter/material.dart';
import 'package:munich4182_s_application2/presentation/organization_map_container_screen/organization_map_container_screen.dart';
import 'package:munich4182_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String organizationMapPage = '/organization_map_page';

  static const String organizationMapContainerScreen =
      '/organization_map_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    organizationMapContainerScreen: (context) =>
        OrganizationMapContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
