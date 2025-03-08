import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/correction_ladder_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladder_columns.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladder_rows_list.dart';

class CorrectionLadderTable extends StatelessWidget {
  const CorrectionLadderTable({
    super.key,
    required this.correctionLadderList,
  });

  final List<CorrectionLadderModel> correctionLadderList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          const CorrectionLadderColumns(),
          SizedBox(
            height: getResponsiveSize(context, 480),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: CorrectionLadderRowsList(
                correctionLadderList: correctionLadderList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
