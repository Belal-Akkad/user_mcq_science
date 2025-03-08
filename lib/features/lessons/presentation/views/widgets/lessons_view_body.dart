import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/custom_lessons_app_bar.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/lessons_list_view.dart';

class LessonsViewBody extends StatelessWidget {
  const LessonsViewBody(
      {super.key, required this.lessions, required this.image});
  final List<LessonModel> lessions;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLessonsAppBar(image: image),
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
            child: LessonsListView(lessions: lessions),
          ),
        ],
      ),
    );
  }
}
