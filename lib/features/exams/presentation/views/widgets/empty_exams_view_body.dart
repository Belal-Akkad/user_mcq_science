import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/widgets/custom_shimmer_text.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/custom_exams_app_bar.dart';

class EmptyExamsViewBody extends StatelessWidget {
  const EmptyExamsViewBody({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomExamsAppBar(image: image),
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
