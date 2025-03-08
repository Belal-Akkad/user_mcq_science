import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/models/section_model.dart';

class HomeRemoteDataSource {
  HomeRemoteDataSource({required this.supabaseClient});
  final SupabaseClient supabaseClient;
  final String sectionsTable = 'sections';
  final String lessionsTable = 'lessons';
  final String questionsTable = 'questions';
  final String updatesTable = 'updates';

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
    Map<String, dynamic> lessonsMap = {};

    sections.map(
      (section) {
        List<LessonModel> lessonsGroupBySection = response
            .where((lession) => lession['section_id'] == section.id)
            .map((lession) => LessonModel.fromJson(lession))
            .toList();
        lessonsMap.addAll(
          {section.id.toString(): lessonsGroupBySection},
        );
      },
    ).toList();

    return lessonsMap;
  }

  Future<Map<String, dynamic>> fetchQuestions(
      Map<String, dynamic> allLessonsMap) async {
    List<Map<String, dynamic>> response =
        await supabaseClient.from(questionsTable).select();
    Map<String, dynamic> questionsMap = {};
    List<LessonModel> lessonsList = [];

    allLessonsMap.values.toList().map(
      (lessons) {
        lessonsList.addAll(lessons);
      },
    ).toList();

    lessonsList.map(
      (lesson) {
        List<QuestionModel> quesstionsGroupByLessons = response
            .where((question) => question['lesson_id'] == lesson.id)
            .map((question) => QuestionModel.fromJson(question))
            .toList();
        questionsMap.addAll(
          {lesson.id.toString(): quesstionsGroupByLessons},
        );
      },
    ).toList();

    return questionsMap;
  }

  Future<void> singOut() async {
    supabaseClient.auth.signOut();
  }
}
