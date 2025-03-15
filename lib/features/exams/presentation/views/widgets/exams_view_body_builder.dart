import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/empty_exams_view_body.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/exams_view_body.dart';

class ExamsViewBodyBuilder extends StatelessWidget {
  const ExamsViewBodyBuilder(
      {super.key, required this.exams, required this.image});
  final List<ExamModel> exams;
  final String image;
  @override
  Widget build(BuildContext context) {
    return exams.isEmpty
        ? EmptyExamsViewBody(image: image)
        : ExamsViewBody(exams: exams, image: image);
  }
}
