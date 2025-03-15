import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/models/section_model.dart';

class HomeRemoteDataSource {
  HomeRemoteDataSource({required this.supabaseClient});
  final SupabaseClient supabaseClient;
  final String sectionsTable = 'sections';
  final String lessionsTable = 'exams';
  final String questionsTable = 'questions';

  Future<List<SectionModel>> fetchSections() async {
    List<Map<String, dynamic>> data = await supabaseClient
        .from(sectionsTable)
        .select()
        .order('id', ascending: true);
    return data.map((section) => SectionModel.fromJson(section)).toList();
  }

  Future<Map<String, dynamic>> fetchlessions(
      {required List<SectionModel> sections}) async {
    List<Map<String, dynamic>> response = await supabaseClient
        .from(lessionsTable)
        .select()
        .order('created_at', ascending: true);
    Map<String, dynamic> examsMap = {};

    sections.map(
      (section) {
        List<ExamModel> examsGroupBySection = response
            .where((lession) => lession['section_id'] == section.id)
            .map((lession) => ExamModel.fromJson(lession))
            .toList();
        examsMap.addAll(
          {section.id.toString(): examsGroupBySection},
        );
      },
    ).toList();

    return examsMap;
  }

  Future<Map<String, dynamic>> fetchQuestions(
      Map<String, dynamic> allexamsMap) async {
    List<Map<String, dynamic>> response =
        await supabaseClient.from(questionsTable).select();
    Map<String, dynamic> questionsMap = {};
    List<ExamModel> examsList = [];

    allexamsMap.values.toList().map(
      (exam) {
        examsList.addAll(exam);
      },
    ).toList();

    examsList.map(
      (exams) {
        List<QuestionModel> quesstionsGroupByExams = response
            .where((question) => question['exam_id'] == exams.id)
            .map((question) => QuestionModel.fromJson(question))
            .toList();
        questionsMap.addAll(
          {exams.id.toString(): quesstionsGroupByExams},
        );
      },
    ).toList();

    return questionsMap;
  }

  Future<void> singOut() async {
    supabaseClient.auth.signOut();
  }
}
