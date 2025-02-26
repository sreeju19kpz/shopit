import 'package:flutter/material.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final double height;
  final double width;
  const PrimaryButton({
    required this.onPress,
    required this.title,
    this.height = 54,
    this.width = double.infinity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(8),
        splashColor: Color.fromARGB(100, 0, 0, 0),
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: AppColors.lightBackground),
            ),
          ),
        ),
      ),
    );
  }
}
