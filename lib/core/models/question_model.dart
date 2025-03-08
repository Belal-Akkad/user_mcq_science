class QuestionModel {
  final int id;
  final String questionText;
  final List<String> choices;
  final int correctAnswer;
  final int lessonId;

  QuestionModel(
      {required this.id,
      required this.questionText,
      required this.choices,
      required this.correctAnswer,
      required this.lessonId});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
        id: json['id'],
        questionText: json['question_text'],
        choices: (json['choices'] as List<dynamic>)
            .map((choice) => choice.toString())
            .toList(),
        correctAnswer: json['correct_answer'],
        lessonId: json['lesson_id']);
  }

  Map<String, dynamic> toJson() => {
        'questionText': questionText,
        'choices': choices,
        'correctAnswer': correctAnswer,
        'lessonId': lessonId,
      };
}
