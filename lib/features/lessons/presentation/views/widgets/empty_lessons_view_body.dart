import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/widgets/custom_shimmer_text.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/custom_lessons_app_bar.dart';

class EmptyLessonsViewBody extends StatelessWidget {
  const EmptyLessonsViewBody({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLessonsAppBar(image: image),
          const Spacer(),
          const Center(
            child: CustomShimmerText(text: 'لم يتم إضافة أي إختبار بعد'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
