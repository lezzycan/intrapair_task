import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final Color? shadowColor;
  final String label;
  final TextStyle? labelTextStyle;
  final Color? labelColor;
  final Color? color;
  final double? height;
  final double? width;
  final bool? isBusy;
  final bool? isEnabled;
  final Color? tapColor;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final IconData? prefixIcon;
  final double? widths;

  const AppButton({
    Key? key,
    this.labelColor,
    required this.onPressed,
    required this.label,
    this.shadowColor,
    this.color,
    this.height,
    this.width,
    this.isBusy = false,
    this.isEnabled = true,
    this.tapColor,
    this.borderRadius,
    this.elevation,
    this.labelTextStyle,
    this.borderColor,
    this.prefixIcon,
    this.widths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: shadowColor,
      elevation: elevation ?? 5,
      color: isEnabled!
          ? color ?? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.background,
      borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(8)),
      child: InkWell(
        onTap: isEnabled! ? onPressed : () {},
        splashColor: isEnabled!
            ? tapColor ?? Theme.of(context).colorScheme.surface
            : null,
        customBorder: RoundedRectangleBorder(
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(4)),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: widths ?? 1.0,
            ),
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(4)),
          ),
          constraints: BoxConstraints.tightFor(
            height: height ?? 48,
            width: isBusy!
                ? double.infinity
                : width ?? MediaQuery.of(context).size.width,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: FittedBox(
            child: isBusy!
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).colorScheme.background,
                    ),
                  )
                : Text(
                    label,
                    style: labelTextStyle ??
                        Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                  ),
          ),
        ),
      ),
    );
  }
}
