class SectionModel {
  final int id;
  final String sectionName;

  SectionModel({required this.id, required this.sectionName});

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      id: json['id'],
      sectionName: json['section_name'],
    );
  }
}
