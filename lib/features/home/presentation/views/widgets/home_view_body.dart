import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/core/widgets/custom_modal_progress_hug.dart';
import 'package:user_quiz_app/features/home/presentation/manager/sign_out_cubit/sign_out_cubit.dart';
import 'package:user_quiz_app/features/home/presentation/manager/sign_out_cubit/sign_out_state.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/sections_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.sections,
    required this.examsMap,
  });
  final List<SectionModel> sections;
  final Map<String, dynamic> examsMap;

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry padding = EdgeInsets.all(
      getResponsiveSize(context, 12),
    );
    return BlocBuilder<SignOutCubit, SignOutState>(
      builder: (context, state) {
        return CustomModalProgressHUD(
          inAsyncCall: state is SignOutLoadingState,
          child: Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHomeAppBar(),
                SizedBox(height: getResponsiveSize(context, 20)),
                Expanded(
                  child: SectionsListView(
                    sections: sections,
                    examsMap: examsMap,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
