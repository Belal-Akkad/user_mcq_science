import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/models/exam_model.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_cubit.dart';
import 'package:user_quiz_app/features/exams/presentation/views/widgets/exam_item.dart';

class ExamsListView extends StatelessWidget {
  const ExamsListView({
    super.key,
    required this.exams,
  });

  final List<ExamModel> exams;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exams.length,
      itemBuilder: (context, index) {
        return ExamItem(
          exams: exams[index],
          questions: BlocProvider.of<FetchAllDataCubit>(context)
              .questionsMap[exams[index].id.toString()],
        );
      },
    );
  }
}
