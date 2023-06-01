import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_assets.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
import 'package:intrapair_task/ui/shared/app_spacing.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_button.dart';
import 'package:stacked/stacked.dart';

import 'onboard_viewmodel.dart';

class OnboardView extends StackedView<OnboardViewModel> {
  OnboardView({Key? key}) : super(key: key);
  int selectedIndex = 0;

  @override
  Widget builder(
    BuildContext context,
    OnboardViewModel viewModel,
    Widget? child,
  ) {
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.intrapairBackGround),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 27.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 375.h,
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.panel),
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: PageView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Join the best \ntailoring app',
                          style: _textTheme.titleLarge!
                              .copyWith(color: kcVeryLight),
                        ),
                        AppSpacing.height(20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Take your tailoring to the next level with Stitch Vine',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: _textTheme.bodySmall!
                                .copyWith(color: kcVeryLight),
                          ),
                        ),
                        AppSpacing.height(30.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: AppButton(
                            onPressed: viewModel.navigateToLogin,
                            label: 'Get Started',
                            labelColor: kcVeryLight,
                          ),
                        ),
                        AppSpacing.height(20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(4, (index) {
                            return Container(
                              margin: const EdgeInsets.all(5),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                color: selectedIndex == index
                                    ? kcLightGrey
                                    : kcPrimaryColorDark,
                              ),
                            );
                          }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  OnboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardViewModel();
}
