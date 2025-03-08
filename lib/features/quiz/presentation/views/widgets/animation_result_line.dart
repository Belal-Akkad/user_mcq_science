import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class AnimationResultLine extends StatelessWidget {
  const AnimationResultLine({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: getResponsiveSize(context, getResponsiveSize(context, 35)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getResponsiveSize(context, 16)),
        gradient: AppColor.kPrimaryGradient,
      ),
    );
  }
}
