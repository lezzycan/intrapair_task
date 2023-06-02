
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
import 'package:intrapair_task/ui/shared/app_spacing.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_button.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_textfield.dart';
import 'package:intrapair_task/ui/views/customer/customer_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CustomerView extends HookWidget {
  const CustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    useAutomaticKeepAlive();
    final _textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<CustomerViewModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
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
                    labelStyle:
                        _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                  ),
                  AppSpacing.height(20.h),
                  AppTextFieldWidget(
                      labelText: const Text('Gender'),
                      controller:
                          TextEditingController(text: model.selectedGender),
                      labelStyle:
                          _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                      onTap: model.tap),
                  model.isTapped
                      ? Container(
                          width: double.infinity,
                          height: 100.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(width: 1.0),
                          ),
                          child: ListView.builder(
                              itemCount: model.genders.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: GestureDetector(
                                    onTap: () {
                                      model.selectedItem(index);
                                    },
                                    child: Text(
                                      model.genders[index],
                                      style: _textTheme.bodySmall!
                                          .copyWith(color: kcTextColor),
                                    ),
                                  ),
                                );
                              }))
                      : const Text(''),
                  AppSpacing.height(20.h),
                  AppTextFieldWidget(
                    labelText: const Text('Email Adress'),
                    hintText: 'adeyinka@gmail.com',
                    controller: emailController,
                    labelStyle:
                        _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                  ),
                  AppSpacing.height(20.h),
                  AppTextFieldWidget(
                    labelText: const Text('Phone Number'),
                    controller: phoneController,
                    hintText: '+234 9036548321',
                    hintTextStyle: _textTheme.bodySmall,
                    labelStyle:
                        _textTheme.bodySmall!.copyWith(color: kcPrimaryColor),
                  ),
                  AppSpacing.height(30.h),
                  AppButton(onPressed: () {}, label: 'Next')
                ],
              ),
              const Text('Hello Intrapair')
            ]),
          ),
        ),
      ),
      viewModelBuilder: () => CustomerViewModel(),
    );
  }
}
