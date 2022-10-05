import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/models/job_model.dart';

class JobsController extends GetxController {
  var textEditingController = TextEditingController().obs;
  static final List<JobModel> jobs = <JobModel>[
    JobModel(index: 0, jobTitle: "Amazon", isFavourite: false.obs),
    JobModel(index: 1, jobTitle: "Google", isFavourite: false.obs),
    JobModel(index: 2, jobTitle: "Qtech", isFavourite: false.obs),
    JobModel(index: 3, jobTitle: "Xtechs", isFavourite: false.obs),
    JobModel(index: 4, jobTitle: "Samsusng", isFavourite: false.obs),
    JobModel(index: 5, jobTitle: "Apple", isFavourite: false.obs),
  ].obs;

  var savedList = <JobModel>[].obs;
  var displayList = List.from(jobs).obs;

  final TabBarController tabBarController = Get.find();

  void addToSavedList(JobModel index) {
    index.isFavourite.toggle();
    savedList.add(index);
    savedList.value =
        jobs.where((job) => job.isFavourite.value == true).toList();
  }

  void removeFromSaved(JobModel index) {
    index.isFavourite.toggle();
    savedList.remove(index);
  }

  int get displayListLength => displayList.length.obs.toInt();
  int get displaySavedLength => savedList.length.obs.toInt();

  get returnJobs => jobs;

  void sortListAlphabeticaly() {
    displayList.sort(
      (a, b) => a.jobTitle.compareTo(b.jobTitle),
    );
  }

  void reverseSortList() {
    displayList.sort(
      (a, b) => b.jobTitle.compareTo(a.jobTitle),
    );
  }

  void updateList(String value) {
    if (value.isEmpty) {
      displayList.value = jobs;
      savedList.value =
          jobs.where((job) => job.isFavourite.value == true).toList();
    }
    if (tabBarController.tabBarcontroller.index == 0) {
      displayList.value = jobs
          .where(
            (job) => job.jobTitle.toString().toLowerCase().contains(
                  value.toLowerCase(),
                ),
          )
          .toList();
    }
    if (tabBarController.tabBarcontroller.index == 1) {
      savedList.value = jobs.where((job) {
        return job.jobTitle.toString().toLowerCase().contains(
                  value.toLowerCase(),
                ) &&
            job.isFavourite.value == true;
      }).toList();
    }
  }
}
