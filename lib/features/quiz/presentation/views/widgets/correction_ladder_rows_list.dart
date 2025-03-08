import 'package:flutter/material.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/correction_ladder_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/correction_ladder_row.dart';

class CorrectionLadderRowsList extends StatelessWidget {
  const CorrectionLadderRowsList({
    super.key,
    required this.correctionLadderList,
  });

  final List<CorrectionLadderModel> correctionLadderList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(correctionLadderList.length, (rowIndex) {
        return CorrectionLadderRow(
          correctAnswer: correctionLadderList[rowIndex].correctAnswer,
          questionText: correctionLadderList[rowIndex].questionsText,
          selectedAnswer: correctionLadderList[rowIndex].selectedAnswer,
          isCorrect: correctionLadderList[rowIndex].isCorrect,
        );
      }),
    );
  }
}
