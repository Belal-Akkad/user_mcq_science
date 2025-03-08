import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/empty_lessons_view_body.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/lessons_view_body.dart';

class LessonsViewBodyBuilder extends StatelessWidget {
  const LessonsViewBodyBuilder(
      {super.key, required this.lessions, required this.image});
  final List<LessonModel> lessions;
  final String image;
  @override
  Widget build(BuildContext context) {
    return lessions.isEmpty
        ? EmptyLessonsViewBody(image: image)
        : LessonsViewBody(lessions: lessions, image: image);
  }
}
