import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/widgets/custom_icon_button.dart';

class CustomExamsAppBar extends StatelessWidget {
  const CustomExamsAppBar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          iconData: Icons.arrow_back,
          onTap: () => Get.back(),
        ),
        SvgPicture.asset(
          image,
          width: getResponsiveSize(context, 40),
          height: getResponsiveSize(context, 40),
        )
      ],
    );
  }
}
