class LessonModel {
  final int id;

  final int sectionId;
  final String lessonName;

  LessonModel(
      {required this.id, required this.lessonName, required this.sectionId});

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      id: json['id'],
      lessonName: json['lesson_name'],
      sectionId: json['section_id'],
    );
  }
}
