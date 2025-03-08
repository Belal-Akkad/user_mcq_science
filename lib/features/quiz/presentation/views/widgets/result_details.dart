import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';

import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/result_view_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladder_table.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_box_builder.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_summary.dart';

class ResultDetails extends StatelessWidget {
  const ResultDetails({
    super.key,
    required this.resultViewModel,
  });

  final ResultViewModel resultViewModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              ResultBoxBuilder(rate: resultViewModel.rate),
              SizedBox(height: getResponsiveSize(context, 40)),
              ResultSummary(resultViewModel: resultViewModel),
              SizedBox(height: getResponsiveSize(context, 50)),
              Text('سلم التصحيح ', style: AppStyles.mediumTextStyle18(context)),
              SizedBox(height: getResponsiveSize(context, 20)),
              CorrectionLadderTable(
                correctionLadderList: resultViewModel.correctionLadderList,
              ),
              const Spacer(),
            ],
          ),
        )
      ]),
    );
  }
}
