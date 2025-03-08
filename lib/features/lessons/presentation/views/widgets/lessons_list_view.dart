import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/models/lesson_model.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_cubit.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/widgets/lesson_item.dart';

class LessonsListView extends StatelessWidget {
  const LessonsListView({
    super.key,
    required this.lessions,
  });

  final List<LessonModel> lessions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessions.length,
      itemBuilder: (context, index) {
        return LessonItem(
          lessons: lessions[index],
          questions: BlocProvider.of<FetchAllDataCubit>(context)
              .questionsMap[lessions[index].id.toString()],
        );
      },
    );
  }
}
