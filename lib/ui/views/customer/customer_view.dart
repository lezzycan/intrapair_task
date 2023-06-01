import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
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
            unselectedLabelColor:kcLightGrey ,
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
          child:  TabBarView(children: [
            AppTextFieldWidget(
              labelText: const Text('Full name'),
       
              helperText: 'Assistive text',
              borderRadius: BorderRadius.circular(8.0),
            ),
            Text('leaf')
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
