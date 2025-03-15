import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/custom_exams_app_bar.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/exams_list_view.dart';

class ExamsViewBody extends StatelessWidget {
  const ExamsViewBody(
      {super.key, required this.exams, required this.image});
  final List<ExamModel> exams;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomExamsAppBar(image: image),
          SizedBox(
            height: getResponsiveSize(context, 20),
          ),
          Text(
            'البدء بإختبار ...',
            style: AppStyles.noramalTextStyle22(context),
          ),
          SizedBox(
            height: getResponsiveSize(context, 20),
          ),
          Expanded(
            child: ExamsListView(exams: exams),
          ),
        ],
      ),
    );
  }
}
