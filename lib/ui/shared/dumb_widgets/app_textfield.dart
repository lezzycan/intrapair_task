import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFieldWidget extends StatelessWidget {
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final String? hintText;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool hasBorder;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final BorderRadius? borderRadius;
  final Color? tappedColor;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool autofocus;
  final bool? enabled;
  final double? focusBorderWidth;
  final Color? focusColor;
  final double? borderWidth;
  final Color? borderColor;
  final Color? enableBorderColor;
  final VoidCallback? onTap;
  final Widget? suffix;
  final TextStyle? suffixStyle;
  final TextStyle? errorStyle;
  final Widget? labelText;
  final TextStyle? labelStyle;
  final String? helperText;
  final TextStyle? helperStyle;
  final Widget? prefix;
  final bool? readOnly;
  final TextAlign? textAlignPosition;
  final List<TextInputFormatter>? inputFormatters;
  const AppTextFieldWidget(
      {Key? key,
      this.focusColor,
      this.borderColor,
      this.focusBorderWidth,
      this.textAlignPosition,
      this.borderWidth,
      this.textInputAction,
      this.focusNode,
      this.controller,
      this.onSubmitted,
      this.hintText,
      this.backgroundColor,
      this.validator,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.suffixIconColor,
      this.prefixIconColor,
      this.hasBorder = false,
      this.keyboardType,
      this.hintTextStyle,
      this.borderRadius,
      this.tappedColor,
      this.minLines,
      this.maxLines,
      this.maxLength,
      this.autofocus = false,
      this.enabled,
      this.padding,
      this.inputFormatters,
      this.enableBorderColor,
      this.onTap,
      this.suffix,
      this.suffixStyle,
      this.errorStyle,
      this.labelText,
      this.labelStyle,
      this.helperText,
      this.helperStyle,
      this.prefix,
      this.readOnly})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onTap: onTap,
      inputFormatters: inputFormatters,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: autofocus,
      controller: controller,
      validator: validator,
      focusNode: focusNode,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      onFieldSubmitted: onSubmitted,
      onSaved: (value) => onSubmitted!(value!),
      obscureText: obscureText,
      cursorColor: Theme.of(context).colorScheme.primary,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
      textAlign: textAlignPosition ?? TextAlign.left,
      decoration: InputDecoration(
        label: labelText,
        labelStyle: labelStyle,
        // filled: true,
        contentPadding: padding,
        // fillColor: backgroundColor ?? Theme.of(context).colorScheme.secondary,
        prefix: prefix,
        suffix: suffix,
        helperText: helperText,
        helperStyle: helperStyle ??
            TextStyle(color: Theme.of(context).colorScheme.primary),
        errorStyle: errorStyle,
        suffixStyle: suffixStyle,
        suffixIcon: suffixIcon,
        suffixIconColor:
            suffixIconColor ?? Theme.of(context).colorScheme.primary,
        prefixIcon: prefixIcon,
        prefixIconColor:
            prefixIconColor ?? Theme.of(context).colorScheme.primary,
        hintText: hintText,
        hintStyle: hintTextStyle ??
            Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          borderSide: BorderSide(
            width: focusBorderWidth ?? 1,
            color: enableBorderColor ?? Theme.of(context).colorScheme.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          borderSide: BorderSide(
            width: focusBorderWidth ?? 1,
            color: focusColor ?? Theme.of(context).colorScheme.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          borderSide: BorderSide(
            width: borderWidth ?? 2,
            color: borderColor ?? Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
