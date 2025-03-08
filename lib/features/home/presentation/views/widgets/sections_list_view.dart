import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_quiz_app/core/constants/app_asset.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/functions/get_screen_width.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/features/lessons/presentation/views/lessons_view.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/section_item.dart';

class SectionsListView extends StatelessWidget {
  const SectionsListView(
      {super.key, required this.sections, required this.mapLessons});
  final List<SectionModel> sections;
  final Map<String, dynamic> mapLessons;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getCrossAxisCount(context),
        crossAxisSpacing: getResponsiveSize(context, 30),
        mainAxisSpacing: getResponsiveSize(context, 30),
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigateToLessonsView(index);
          },
          child: SectionItem(
            text: sections[index].sectionName,
            image: AppAsset.kSectionsImages[index],
          ),
        );
      },
      itemCount: sections.length,
    );
  }

  void navigateToLessonsView(int index) {
    Get.to(
      () => LessonsView(
        image: AppAsset.kSectionsImages[index],
        lessions: mapLessons[sections[index].id.toString()],
      ),
      transition: Transition.fade,
    );
  }

  int getCrossAxisCount(BuildContext context) {
    double width = getScreenWidth(context);
    if (width >= 800) {
      return 3;
    } else {
      return 2;
    }
  }
}
