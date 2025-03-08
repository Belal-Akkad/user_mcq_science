import 'package:user_quiz_app/features/quiz/presentation/views/view_model/question_page_model.dart';

abstract class QuestionState {}

class QuestionInitialState extends QuestionState {
  QuestionInitialState();
}

class NextQuestionsState extends QuestionState {
  NextQuestionsState({required this.questionPageModel});
  final QuestionPageModel questionPageModel;
}

class FinishedQuestionsState extends QuestionState {}
