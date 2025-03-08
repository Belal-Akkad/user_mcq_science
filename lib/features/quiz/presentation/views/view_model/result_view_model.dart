import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/correction_ladder_model.dart';

class ResultViewModel {
  final double sumOfCorrectAnswers;
  final List<QuestionModel> questions;
  final List<CorrectionLadderModel> correctionLadderList;
  final double rate;

  ResultViewModel({
    required this.sumOfCorrectAnswers,
    required this.questions,
    required this.correctionLadderList,
    required this.rate,
  });
}
