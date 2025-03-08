import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladders_column_item.dart';

class CorrectionLadderColumns extends StatelessWidget {
  const CorrectionLadderColumns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CorrectionLaddersColumnsItem(
          text: 'السؤال',
          width: getResponsiveSize(context, 390),
        ),
        CorrectionLaddersColumnsItem(
          text: 'الإجابة الصحيحة',
          width: getResponsiveSize(context, 150),
        ),
        CorrectionLaddersColumnsItem(
          text: 'الإجابة المختارة',
          width: getResponsiveSize(context, 150),
        ),
        CorrectionLaddersColumnsItem(
          text: 'النتيجة',
          width: getResponsiveSize(context, 120),
        ),
      ],
    );
  }
}
