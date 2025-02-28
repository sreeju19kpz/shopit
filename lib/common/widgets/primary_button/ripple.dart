import 'package:flutter/material.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';

class RippleButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderWidth;
  final Color borderColor;
  final Widget child;
  final VoidCallback onPress;
  final BorderRadiusGeometry? borderRadius;

  RippleButton({
    required this.onPress,
    this.height = 35,
    this.width = 35,
    this.borderWidth = 1,
    BorderRadius? borderRadius,
    Color? borderColor,
    required this.child,
    super.key,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(9999),
       borderColor = borderColor ?? Colors.black.withAlpha(20);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height,
      height: width,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: borderWidth),
          borderRadius: borderRadius ?? BorderRadius.circular(9999),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Material(
          elevation: 0,
          color: AppColors.transparent,
          child: InkWell(onTap: onPress, child: child),
        ),
      ),
    );
  }
}
