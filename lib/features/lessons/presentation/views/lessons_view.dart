import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/lessons_view_body_builder.dart';

class LessonsView extends StatelessWidget {
  const LessonsView({super.key, required this.lessions, required this.image});
  final List<LessonModel> lessions;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ScreenBackgroundImage(
            screen: LessonsViewBodyBuilder(
              image: image,
              lessions: lessions,
            ),
          ),
        ),
      ),
    );
  }
}
