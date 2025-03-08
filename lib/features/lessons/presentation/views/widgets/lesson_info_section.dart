import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class LessonInfoSection extends StatelessWidget {
  const LessonInfoSection({
    super.key,
    required this.lessons,
  });

  final LessonModel lessons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lessons.lessonName,
            style: AppStyles.semiBoldTextStyle16(context),
          ),
          SizedBox(
            height: getResponsiveSize(context, 10),
          ),
          Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: AppColor.kTurquoiseColor,
            child: Divider(
              thickness: getResponsiveSize(context, 1),
            ),
          )
        ],
      ),
    );
  }
}
