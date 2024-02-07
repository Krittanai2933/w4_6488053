import 'package:flutter/material.dart';
import 'package:munich4182_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red900,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientIndigoToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.4),
          end: Alignment(0.5, 0.5),
          colors: [
            appTheme.indigo50,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
