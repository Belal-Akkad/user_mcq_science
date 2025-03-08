import 'package:flutter_bloc/flutter_bloc.dart';

class ChoicesCubit extends Cubit<int?> {
  ChoicesCubit() : super(null);

  bool isCorrect = false;
  int? selectedIndex;
  void selectAnswer({
    required int index,
    required int correctAnswer,
  }) {
    isCorrect = index == correctAnswer;
    selectedIndex = index;
    emit(index);
  }

  void onQuestionChanged() {
    isCorrect = false;
    selectedIndex = null;
    emit(null);
  }
}
