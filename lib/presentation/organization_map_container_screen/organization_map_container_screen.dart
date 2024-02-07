import 'package:flutter/material.dart';
import 'package:munich4182_s_application2/core/app_export.dart';
import 'package:munich4182_s_application2/presentation/organization_map_page/organization_map_page.dart';
import 'package:munich4182_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class OrganizationMapContainerScreen extends StatelessWidget {
  OrganizationMapContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.organizationMapPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.organizationMapPage;
      case BottomBarEnum.Trainerchatbot:
        return "/";
      case BottomBarEnum.Aboutus:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.organizationMapPage:
        return OrganizationMapPage();
      default:
        return DefaultWidget();
    }
  }
}
