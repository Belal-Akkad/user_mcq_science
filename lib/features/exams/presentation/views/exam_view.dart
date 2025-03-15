import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/exams_view_body_builder.dart';

class ExamsView extends StatelessWidget {
  const ExamsView({super.key, required this.exams, required this.image});
  final List<ExamModel> exams;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ScreenBackgroundImage(
            screen: ExamsViewBodyBuilder(
              image: image,
              exams: exams,
            ),
          ),
        ),
      ),
    );
  }
}
