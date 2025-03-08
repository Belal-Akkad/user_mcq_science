import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class AnimationTimerLine extends StatelessWidget {
  const AnimationTimerLine({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getResponsiveSize(context, 14)),
          gradient: AppColor.kPrimaryGradient),
    );
  }
}
