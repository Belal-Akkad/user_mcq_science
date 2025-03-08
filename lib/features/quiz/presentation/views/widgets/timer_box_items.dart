import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class TimerBoxItems extends StatelessWidget {
  const TimerBoxItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getResponsiveSize(context, 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'دقيقة ',
              style: AppStyles.boldTextStyle16(context),
            ),
            Icon(
              FontAwesomeIcons.clock,
              size: getResponsiveSize(context, 22),
              color: AppColor.kWhiteColor,
            )
          ],
        ),
      ),
    );
  }
}
