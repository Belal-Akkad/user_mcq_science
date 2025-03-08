import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class CorrectionLaddersColumnsItem extends StatelessWidget {
  const CorrectionLaddersColumnsItem({
    super.key,
    required this.text,
    required this.width,
  });
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: getResponsiveSize(context, 60),
      decoration: BoxDecoration(
        color: AppColor.kMidnightBlue,
        border: Border.all(color: AppColor.kBlueGrayColor),
      ),
      child: Padding(
        padding: EdgeInsets.all(getResponsiveSize(context, 8)),
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Text(text, style: AppStyles.boldTextStyle16(context)),
        ),
      ),
    );
  }
}
