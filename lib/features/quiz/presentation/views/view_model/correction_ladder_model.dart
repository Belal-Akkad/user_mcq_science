class CorrectionLadderModel {
  final String questionsText;
  final String correctAnswer;
  final String selectedAnswer;
  final bool isCorrect;

  CorrectionLadderModel({
    required this.questionsText,
    required this.correctAnswer,
    required this.selectedAnswer,
    required this.isCorrect,
  });
}
