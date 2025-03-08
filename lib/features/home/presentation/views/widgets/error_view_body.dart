import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/widgets/custom_shimmer_text.dart';
import 'package:user_quiz_app/features/home/presentation/manager/fetch_all_data_cubit/fetch_all_data_cubit.dart';

class ErrorViewBody extends StatelessWidget {
  const ErrorViewBody({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      height: getResponsiveSize(context, 100),
      color: AppColor.kMidnightBlue,
      backgroundColor: AppColor.kTurquoiseColor,
      onRefresh: () async {
        await handleRefresh(context);
      },
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomShimmerText(text: errMessage),
                SizedBox(
                  height: getResponsiveSize(context, 5),
                ),
                const CustomShimmerText(text: 'اسحب لإعادة التحميل'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> handleRefresh(BuildContext context) async {
    final cubit = context.read<FetchAllDataCubit>();
    await Future.delayed(const Duration(seconds: 2));
    cubit.fetchAllData();
  }
}
