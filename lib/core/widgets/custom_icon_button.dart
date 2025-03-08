import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.iconData,
  });
  final void Function() onTap;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        splashFactory: InkRipple.splashFactory,
        radius: getResponsiveSize(context, 30),
        child: Icon(
          iconData,
          size: getResponsiveSize(context, 28),
          color: AppColor.kWhiteColor,
        ),
      ),
    );
  }
}
