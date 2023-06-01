import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_assets.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
import 'package:intrapair_task/ui/extension/validation_extension.dart';
import 'package:intrapair_task/ui/shared/app_spacing.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_button.dart';
import 'package:intrapair_task/ui/shared/dumb_widgets/app_textfield.dart';
import 'package:intrapair_task/ui/views/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends HookWidget {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    useAutomaticKeepAlive();
    final _textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: 40.w, top: 50.h, right: 40.w, bottom: 40.h),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(AppAssets.stitch),
                      AppSpacing.height(17.h),
                      Text(
                        'Welcome Back!',
                        textAlign: TextAlign.center,
                        style: _textTheme.bodyLarge,
                      ),
                      const AppSpacing.largeHeight(),
                      AppTextFieldWidget(
                        hintText: 'Email Address',
                        hintTextStyle: _textTheme.bodySmall!
                            .copyWith(color: const Color(0xFF8D8B8B)),
                        errorStyle: _textTheme.bodySmall!
                            .copyWith(color: Colors.red, fontSize: 12),
                        controller: emailController,
                        validator: context.validateEmailAddress,
                        borderWidth: 1.0,
                        borderRadius: BorderRadius.circular(8.r),
                        borderColor: kcTextFieldBorderColor,
                        textInputAction: TextInputAction.next,
                      ),
                      AppSpacing.height(15.h),
                      AppTextFieldWidget(
                          hintText: 'Password',
                          obscureText: model.isVisible,
                          maxLines: 1,
                          hintTextStyle: _textTheme.bodySmall!
                              .copyWith(color: const Color(0xFF8D8B8B)),
                          errorStyle: _textTheme.bodySmall!
                              .copyWith(color: Colors.red, fontSize: 12),
                          controller: passwordController,
                          validator: context.validatePassword,
                          borderWidth: 1.0,
                          borderRadius: BorderRadius.circular(8.r),
                          borderColor: kcTextFieldBorderColor,
                          textInputAction: TextInputAction.done,
                          suffixIcon: GestureDetector(
                              onTap: model.toggleRevealText,
                              child: Icon(model.isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility))),
                      const AppSpacing.tinyHeight(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: _textTheme.bodySmall!
                                  .copyWith(color: kcPrimaryColor),
                            )),
                      ),
                      const AppSpacing.smallHeight(),
                      AppButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              model.navigateToCustomerScreen();
                            }
                          },
                          label: 'Log in'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'or Continue using',
                        style:
                            _textTheme.bodySmall!.copyWith(color: kcLightGrey),
                      ),
                      const AppSpacing.tinyHeight(),
                      Image(
                        image: AssetImage(AppAssets.google),
                      ),
                      const AppSpacing.mediumHeight(),
                      InkWell(
                        onTap: () {},
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Don\'t have an account? ',
                              style: _textTheme.bodySmall!
                                  .copyWith(color: kcLightGrey)),
                          TextSpan(
                              text: 'Sign up',
                              style: _textTheme.bodySmall!
                                  .copyWith(color: kcPrimaryColor))
                        ])),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
