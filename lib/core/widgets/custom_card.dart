import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry padding = EdgeInsets.symmetric(
      horizontal: getResponsiveSize(context, 10),
      vertical: getResponsiveSize(context, 20),
    );
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getResponsiveSize(context, 12)),
        ),
        color: AppColor.kMidnightBlue,
        elevation: 5,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
