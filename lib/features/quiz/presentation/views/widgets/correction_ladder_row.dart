import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladder_row_item.dart';

class CorrectionLadderRow extends StatelessWidget {
  const CorrectionLadderRow({
    super.key,
    required this.selectedAnswer,
    required this.isCorrect,
    required this.questionText,
    required this.correctAnswer,
  });
  final String selectedAnswer;
  final bool isCorrect;
  final String questionText;
  final String correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CorrectionLaddersRowItem(
          width: getResponsiveSize(context, 390),
          child: Center(
            child:
                Text(questionText, style: AppStyles.boldTextStyle16(context)),
          ),
        ),
        CorrectionLaddersRowItem(
          width: getResponsiveSize(context, 150),
          child: Center(
            child:
                Text(correctAnswer, style: AppStyles.boldTextStyle16(context)),
          ),
        ),
        CorrectionLaddersRowItem(
          width: getResponsiveSize(context, 150),
          child: Center(
              child: Text(selectedAnswer,
                  style: AppStyles.boldTextStyle16(context))),
        ),
        CorrectionLaddersRowItem(
          width: getResponsiveSize(context, 120),
          child: Icon(
            isCorrect ? Icons.check : Icons.close,
            color: AppColor.kWhiteColor,
            size: getResponsiveSize(context, 28),
          ),
        ),
      ],
    );
  }
}
