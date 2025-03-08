import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class EmptyTimerBox extends StatelessWidget {
  const EmptyTimerBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getResponsiveSize(context, 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getResponsiveSize(context, 17)),
        border: Border.all(
          color: AppColor.kWhiteColor,
          width: getResponsiveSize(context, 1.5),
        ),
      ),
      child: child,
    );
  }
}
