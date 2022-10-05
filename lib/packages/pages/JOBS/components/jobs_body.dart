import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_all.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_saved.dart';

class JobsBody extends StatelessWidget {
  JobsBody({Key? key}) : super(key: key);

  final TabBarController _tabBarController = Get.find();

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabBarController.tabBarcontroller,
      children: [
        const JobsAll(),
        JobsSaved(),
      ],
    );
  }
}
