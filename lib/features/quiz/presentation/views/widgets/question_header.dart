import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
    required this.currentQuestion,
    required this.numberOfQuestions,
  });
  final int currentQuestion;
  final int numberOfQuestions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getResponsiveSize(context, 20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'السؤال',
                style: AppStyles.boldTextStayle30(context),
              ),
              Text.rich(
                TextSpan(
                  text: '  $currentQuestion',
                  style: AppStyles.mediumnTextStayle20(context),
                  children: [
                    TextSpan(
                      text: ' / $numberOfQuestions',
                      style: AppStyles.boldTextStayle30(context),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
