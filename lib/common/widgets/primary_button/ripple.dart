import 'package:flutter/material.dart';

class RippleButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderWidth;
  final String title;
  final VoidCallback onPress;
  final BorderRadiusGeometry? borderRadius = BorderRadius.circular(9999);

  RippleButton({
    required this.onPress,
    this.height = 35,
    this.width = 35,
    this.borderWidth = 1,
    BorderRadius? borderRadius,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height,
      height: width,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withAlpha(20),
            width: borderWidth,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(9999),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(9999),
          child: InkWell(
            onTap: onPress,
            borderRadius: BorderRadius.circular(9999),
            child: Center(child: Text(title)),
          ),
        ),
      ),
    );
  }
}
