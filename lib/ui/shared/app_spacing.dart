
import 'package:flutter/material.dart';
import 'package:intrapair_task/ui/common/app_dimensions.dart';

/// This widget provides a vertical and horizontal spacing between widgets.

/// These widgets can be used in place of using hardcoded heights or widths for sized boxes.
/// For example, rather than declaring SizedBox(height: 20), we can declare AppSpacing.height(20).
/// Or rather than declaring SizedBox(width: 8), we will declare AppSpacing.smallWidth().

class AppSpacing extends StatelessWidget {
  const AppSpacing.empty({super.key})
      : width = AppDimensions.zero,
        height = AppDimensions.zero;

  const AppSpacing.xxxLargeWidth({Key? key})
      : this.width(AppDimensions.xxxLarge, key: key);

  const AppSpacing.xxLargeWidth({Key? key})
      : this.width(AppDimensions.xxLarge, key: key);

  const AppSpacing.xLargeWidth({Key? key})
      : this.width(AppDimensions.xLarge, key: key);

  const AppSpacing.largeWidth({Key? key})
      : this.width(AppDimensions.large, key: key);

  const AppSpacing.bigWidth({Key? key})
      : this.width(AppDimensions.big, key: key);

  const AppSpacing.mediumWidth({Key? key})
      : this.width(AppDimensions.medium, key: key);

  const AppSpacing.smallWidth({Key? key})
      : this.width(AppDimensions.small, key: key);

  const AppSpacing.xxxSmallWidth({Key? key})
      : this.width(AppDimensions.xxxSmall, key: key);

  const AppSpacing.xxSmallWidth({Key? key})
      : this.width(AppDimensions.xxSmall, key: key);

  const AppSpacing.xSmallWidth({Key? key})
      : this.width(AppDimensions.xSmall, key: key);

  const AppSpacing.tinyWidth({Key? key})
      : this.width(AppDimensions.tiny, key: key);
  const AppSpacing.xxxLargeHeight({Key? key})
      : this.height(AppDimensions.xxxLarge, key: key);

  const AppSpacing.xxLargeHeight({Key? key})
      : this.height(AppDimensions.xxLarge, key: key);

  const AppSpacing.xLargeHeight({Key? key})
      : this.height(AppDimensions.xLarge, key: key);

  const AppSpacing.largeHeight({Key? key})
      : this.height(AppDimensions.large, key: key);

  const AppSpacing.bigHeight({Key? key})
      : this.height(AppDimensions.big, key: key);

  const AppSpacing.mediumHeight({Key? key})
      : this.height(AppDimensions.medium, key: key);

  const AppSpacing.smallHeight({Key? key})
      : this.height(AppDimensions.small, key: key);

  const AppSpacing.xSmallHeight({Key? key})
      : this.height(AppDimensions.xSmall, key: key);

  const AppSpacing.xxSmallHeight({Key? key})
      : this.height(AppDimensions.xxSmall, key: key);

  const AppSpacing.xxxSmallHeight({Key? key})
      : this.height(AppDimensions.xxxSmall, key: key);

  const AppSpacing.tinyHeight({Key? key})
      : this.height(AppDimensions.tiny, key: key);

  const AppSpacing.width(this.width, {super.key}) : height = AppDimensions.zero;

  const AppSpacing.height(this.height, {super.key})
      : width = AppDimensions.zero;

  /// The width of the spacing.
  final double height;

  /// The height of the spacing.
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(key: super.key, height: height, width: width);
  }
}
