import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class ExamInfoSection extends StatelessWidget {
  const ExamInfoSection({
    super.key,
    required this.exams,
  });

  final ExamModel exams;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exams.examName,
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
