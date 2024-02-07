import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeRobotoGray900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray900,
        fontSize: 22.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
