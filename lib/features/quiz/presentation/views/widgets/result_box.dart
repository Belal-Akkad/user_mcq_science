import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/functions/get_screen_width.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/animation_result_line.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/empty_result_box.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    super.key,
    required this.currentValue,
    required this.rate,
  });

  final double currentValue;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return EmptyResultBox(
      child: Stack(
        children: [
          AnimationResultLine(
              width:
                  (getScreenWidth(context) - getResponsiveSize(context, 20)) *
                      currentValue),
          Center(
            child: Text(
              '% ${rate.toInt()}',
              style: AppStyles.boldTextStyle16(context),
            ),
          ),
        ],
      ),
    );
  }
}
