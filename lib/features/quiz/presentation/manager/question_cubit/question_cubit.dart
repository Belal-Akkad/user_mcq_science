import 'dart:async'; // لإضافة المؤقت
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/animation_timer_cubit/animation_timer_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/choice_cubit/choices_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/question_cubit/question_state.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/result_view.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/correction_ladder_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/question_page_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/result_view_model.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit({
    required this.choicesCubit,
    required this.questions,
    required this.animationCubit,
  }) : super(QuestionInitialState());

  final List<QuestionModel> questions;
  final AnimationTimerCubit animationCubit;
  final ChoicesCubit choicesCubit;

  Timer? _timer;
  int nextPage = -1;
  double sumOfCorrectAnswer = 0;
  List<CorrectionLadderModel> correctionLadderList = [];
  double rate = 0;
  void nextQuestion() {
    _cancelTimer();

    if (nextPage >= 0) {
      _saveCorrectionData();
    }

    nextPage++;

    if (_hasNextQuestion) {
      _loadNextQuestion();
    } else {
      _finishQuiz();
    }
  }

  void _saveCorrectionData() {
    final currentQuestion = questions[nextPage];
    final selectedAnswerIndex = choicesCubit.selectedIndex;
    final selectedAnswer = selectedAnswerIndex == null
        ? 'لم يتم الإجابة'
        : currentQuestion.choices[selectedAnswerIndex];

    if (choicesCubit.isCorrect) {
      sumOfCorrectAnswer++;
    }

    correctionLadderList.add(
      CorrectionLadderModel(
        correctAnswer: currentQuestion.choices[currentQuestion.correctAnswer],
        questionsText: currentQuestion.questionText,
        selectedAnswer: selectedAnswer,
        isCorrect: choicesCubit.isCorrect,
      ),
    );
  }

  void _loadNextQuestion() {
    startTimer();
    animationCubit.onQuestionChanged(nextPage: nextPage);
    choicesCubit.onQuestionChanged();

    emit(NextQuestionsState(
      questionPageModel: QuestionPageModel(
        questionModel: questions[nextPage],
        numberOfQuestions: questions.length,
        currentQuestion: nextPage + 1,
      ),
    ));
  }

  void _finishQuiz() {
    rate = (sumOfCorrectAnswer / nextPage) * 100;
    Future.delayed(AppDuration.navigateToResultDuration, _navigateToResult);
    emit(FinishedQuestionsState());
  }

  void _navigateToResult() {
    print(rate);
    Get.off(
      () => ResultView(
        resultViewModel: ResultViewModel(
          correctionLadderList: correctionLadderList,
          sumOfCorrectAnswers: sumOfCorrectAnswer,
          questions: questions,
          rate: rate,
        ),
      ),
    );
  }

  bool get _hasNextQuestion => nextPage < questions.length;

  void startTimer(
      {Duration duration = AppDuration.fillTimerBoxAndNextQuestionDuration}) {
    if (nextPage == 0) {
      duration = AppDuration.firstQuestionDuration;
    }
    _timer = Timer(
      duration,
      () {
        nextQuestion();
      },
    );
  }

  void _cancelTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
  }

  @override
  Future<void> close() {
    _cancelTimer();
    return super.close();
  }
}
