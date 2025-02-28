import 'package:flutter/material.dart';
import 'package:shopit/common/widgets/primary_button/ripple.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';

class SuggestionCard extends StatelessWidget {
  final VoidCallback onPress;
  final double height;
  final double width;
  final double? scaleFactor;
  const SuggestionCard({
    required this.onPress,
    required this.width,
    required this.height,
    required this.scaleFactor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RippleButton(
      onPress: onPress,
      borderRadius: BorderRadius.circular(10),
      borderWidth: 0,
      borderColor: AppColors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("title"), Text("data")],
      ),
    );
  }
}
