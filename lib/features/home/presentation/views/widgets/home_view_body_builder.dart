import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_cubit.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_state.dart';
import 'package:user_quiz_app/features/home/presentation/views/error_view.dart';
import 'package:user_quiz_app/features/home/presentation/views/loading_view.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeViewBodyBuilder extends StatefulWidget {
  const HomeViewBodyBuilder({
    super.key,
  });

  @override
  State<HomeViewBodyBuilder> createState() => _HomeViewBodyBuilderState();
}

class _HomeViewBodyBuilderState extends State<HomeViewBodyBuilder> {
  @override
  void initState() {
    BlocProvider.of<FetchAllDataCubit>(context).fetchAllData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return BlocBuilder<FetchAllDataCubit, FetchAllDataState>(
          builder: (context, state) {
            if (state is FetchAllDataSuccessState) {
              return HomeViewBody(
                sections: state.allDataModel.sections,
                lessonsMap: state.allDataModel.lessonsMap,
              );
            } else if (state is FetchAllDataFailureState) {
              return ErrorView(errMessage: state.errMessage);
            } else {
              return const LoadingView();
            }
          },
        );
      },
    );
  }
}
