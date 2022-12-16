import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/courses_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/custom_tutor_list_tile.dart';

class TutoringBody extends StatelessWidget {
  const TutoringBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CourseController controller = Get.find();

    return TabBarView(
      controller: controller.controller.tabBarcontroller,
      children: const [
        CustomTutorListTile(college: "IT"),
        CustomTutorListTile(college: "ENGINEERING"),
        CustomTutorListTile(college: "BUSINESS"),
        CustomTutorListTile(college: "SCIENCES"),
      ],
    );
  }
}
