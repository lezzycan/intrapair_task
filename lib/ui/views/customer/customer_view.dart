import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
import 'package:intrapair_task/ui/shared/app_spacing.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_button.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_textfield.dart';
import 'package:stacked/stacked.dart';

import 'customer_viewmodel.dart';

class CustomerView extends StackedView<CustomerViewModel> {
  const CustomerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerViewModel viewModel,
    Widget? child,
  ) {
    final _textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            'New Customer',
            style: _textTheme.bodyLarge!
                .copyWith(color: kcTextColor, fontWeight: FontWeight.bold),
          ),
          titleSpacing: 0.0,
          leadingWidth: 35.0,
          elevation: 0,
          bottom: TabBar(
              labelColor: kcPrimaryColor,
              unselectedLabelColor: kcLightGrey,
              indicatorColor: kcPrimaryColor,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 18.0),
              tabs: [
                Tab(
                  text: 'Personal Data'.toUpperCase(),
                ),
                Tab(
                  text: 'Measurement info'.toUpperCase(),
                )
              ]),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: TabBarView(children: [
            Column(
              children: [
                const AppSpacing.tinyHeight(),
                AppTextFieldWidget(
                  labelText: const Text('Full name'),
                  helperText: 'Assistive text',
                  borderRadius: BorderRadius.circular(8.0),
                  labelStyle: _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                ),
                AppSpacing.height(20.h),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Gender',
                      style: _textTheme.bodySmall!.copyWith(color: kcPrimaryColor)
                          .copyWith(color: kcTextColor, fontSize: 12.sp),
                    )),
                Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(width: 1.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      items: viewModel.genders.map((String gender) {
                        return DropdownMenuItem<String>(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(gender),
                          ),
                          value: gender,
                        );
                      }).toList(),
                      onChanged: viewModel.onChangedGender,
                      value: viewModel.selectedGender,
                      //  icon: null,
                    ),
                  ),
                ),
                AppSpacing.height(20.h),
                AppTextFieldWidget(
                  labelText: const Text('Email Adress'),
                  hintText: 'adeyinka@gmail.com',
                  labelStyle: _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                ),
                AppSpacing.height(20.h),
                AppTextFieldWidget(
                  labelText: const Text('Phone Number'),
                  hintText: '+234 9036548321',
                  hintTextStyle: _textTheme.bodySmall,
                  labelStyle: _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                ),
                AppSpacing.height(30.h),
                AppButton(onPressed: () {}, label: 'Next')
              ],
            ),
            const Text('Hello Intrapair')
          ]),
        ),
      ),
    );
  }

  @override
  CustomerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerViewModel();
}
