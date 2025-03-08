import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class CustomShimmerText extends StatelessWidget {
  const CustomShimmerText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: AppColor.kWhiteColor,
        highlightColor: AppColor.kBlueGrayColor,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.noramalTextStyle18(
            context,
          ),
        ),
      ),
    );
  }
}
