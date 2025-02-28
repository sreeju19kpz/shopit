import 'package:flutter/material.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';

class ScaleButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double scaleFactor;
  const ScaleButton({
    required this.child,
    required this.onPressed,
    required this.scaleFactor,
    super.key,
  });

  @override
  State<ScaleButton> createState() => _ScaleButtonState();
}

class _ScaleButtonState extends State<ScaleButton> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = widget.scaleFactor;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0;
    });
    widget.onPressed();
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 100), // Adjust animation speed
        scale: _scale,
        child: Card(
          margin: EdgeInsets.zero,
          color: AppColors.transparent,
          elevation: 0,
          child: widget.child,
        ),
      ),
    );
  }
}
