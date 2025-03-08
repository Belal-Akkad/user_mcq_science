import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/core/widgets/custom_card.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            fit: BoxFit.fill,
            image,
            width: getResponsiveSize(context, 60),
            height: getResponsiveSize(context, 60),
          ),
          SizedBox(
            height: getResponsiveSize(context, 10),
          ),
          Text(
            text,
            style: AppStyles.semiBoldTextStyle16(context),
          ),
        ],
      ),
    );
  }
}
