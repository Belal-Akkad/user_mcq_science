import 'package:user_quiz_app/core/models/section_model.dart';

class AllDataModel {
  final Map<String, dynamic> questionsMap;
  final Map<String, dynamic> lessonsMap;
  final List<SectionModel> sections;

  AllDataModel(
      {required this.questionsMap,
      required this.lessonsMap,
      required this.sections});
}
