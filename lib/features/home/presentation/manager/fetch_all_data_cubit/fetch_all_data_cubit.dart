import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/features/home/data/models/all_data_model.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_lessons_use_case.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_questions_use_case.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_sections_use_case.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_state.dart';

class FetchAllDataCubit extends Cubit<FetchAllDataState> {
  FetchAllDataCubit({
    required this.fetchSectionsUseCase,
    required this.fetchlessonsUseCase,
    required this.fetchQuestionsUseCase,
  }) : super(FetchAllDataInitialState());

  final FetchSectionsUseCase fetchSectionsUseCase;
  final FetchLessonsUseCase fetchlessonsUseCase;
  final FetchQuestionsUseCase fetchQuestionsUseCase;
  Map<String, dynamic> questionsMap = {};
  Future<void> fetchAllData() async {
    emit(FetchAllDataLoadingState());
    fetchSectionData();
  }

  Future<void> fetchSectionData() async {
    var sections = await fetchSectionsUseCase.execute();
    sections.fold(
      (faile) {
        handlFaileState(faile);
      },
      (sections) async {
        fetchLessonsData(sections);
      },
    );
  }

  Future<void> fetchLessonsData(List<SectionModel> sections) async {
    var lessions = await fetchlessonsUseCase.execute(sections: sections);
    lessions.fold(
      (faile) {
        handlFaileState(faile);
      },
      (lessons) async {
        fetchQuestionsData(lessons, sections);
      },
    );
  }

  Future<void> fetchQuestionsData(
      Map<String, dynamic> lessons, List<SectionModel> sections) async {
    var questions = await fetchQuestionsUseCase.execute(lessonsMap: lessons);
    questions.fold(
      (faile) {
        handlFaileState(faile);
      },
      (questions) {
        questionsMap = questions;
        emit(
          FetchAllDataSuccessState(
            allDataModel: AllDataModel(
              questionsMap: questionsMap,
              lessonsMap: lessons,
              sections: sections,
            ),
          ),
        );
      },
    );
  }

  void handlFaileState(ServerFailures faile) {
    emit(FetchAllDataFailureState(errMessage: faile.errMessage));
  }
}
