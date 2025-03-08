import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shimmer/shimmer.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/widgets/custom_card.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/lesson_info_section.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/quiz_view.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.lessons,
    required this.questions,
  });

  final LessonModel lessons;
  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 10)),
      child: GestureDetector(
        onTap: navigateToQuizView,
        child: CustomCard(
          child: Row(
            children: [
              LessonInfoSection(lessons: lessons),
              SizedBox(
                width: getResponsiveSize(context, 10),
              ),
              Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: AppColor.kTurquoiseColor,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: getResponsiveSize(context, 28),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void navigateToQuizView() {
    Get.to(
      () => QuizView(
        questionsList: questions,
      ),
      transition: Transition.fade,
    );
  }
}
