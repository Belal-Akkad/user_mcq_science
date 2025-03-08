import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class CorrectionLaddersRowItem extends StatelessWidget {
  const CorrectionLaddersRowItem({
    super.key,
    required this.child,
    required this.width,
  });

  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: getResponsiveSize(context, 110),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.kBlueGrayColor),
      ),
      child: Padding(
          padding: EdgeInsets.all(getResponsiveSize(context, 8)), child: child),
    );
  }
}
