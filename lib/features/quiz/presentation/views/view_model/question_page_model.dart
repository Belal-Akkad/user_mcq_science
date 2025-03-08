import 'package:user_quiz_app/core/models/question_model.dart';

class QuestionPageModel {
  final int numberOfQuestions;
  final int currentQuestion;
  final QuestionModel questionModel;

  QuestionPageModel({
    required this.numberOfQuestions,
    required this.currentQuestion,
    required this.questionModel,
  });
}
