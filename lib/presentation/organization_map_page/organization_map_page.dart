import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:munich4182_s_application2/core/app_export.dart';
import 'package:munich4182_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:munich4182_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:munich4182_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:munich4182_s_application2/widgets/custom_rating_bar.dart';
import 'package:munich4182_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OrganizationMapPage extends StatelessWidget {
  OrganizationMapPage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildKeepingAnimals(context),
              SizedBox(height: 19.v),
              Container(
                height: 89.v,
                width: 236.h,
                margin: EdgeInsets.only(left: 10.h),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Muhuhu PetOrg",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: 192.h,
                        child: Text(
                          "nonexist street 1337\n065xxxxxxx",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeGray700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStar1,
                      height: 47.v,
                      width: 42.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: CustomRatingBar(
                        initialRating: 3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              _buildRecentOrders(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Muhuhu PetOrg.",
        margin: EdgeInsets.only(left: 109.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildKeepingAnimals(BuildContext context) {
    return SizedBox(
      height: 441.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
      height: 217.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 84.v,
            width: 90.h,
            radius: BorderRadius.circular(
              42.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 19.h),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 65.v,
              width: 267.h,
              margin: EdgeInsets.only(
                right: 28.h,
                bottom: 9.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray30070,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.gradientIndigoToWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(right: 9.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDrunkcat1,
                          height: 90.v,
                          width: 97.h,
                          radius: BorderRadius.circular(
                            45.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 9.v,
                            bottom: 16.v,
                          ),
                          child: CustomTextFormField(
                            width: 267.h,
                            controller: firstNameController,
                            hintText: "Jimbo",
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(left: 122.h),
                    child: Text(
                      "Shippy",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
