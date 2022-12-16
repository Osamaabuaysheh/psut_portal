import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/models/job.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class JobsController extends GetxController {
  final TabBarController tabBarController = Get.find();
  var textEditingController = TextEditingController().obs;
  static List<Job> jobs = <Job>[].obs;
  var displayList = List.from(jobs).obs;

  final SavedJobsController savedJobsController = Get.find();

  Future<List<Job>> getJobs() async {
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_All_Jobs"),
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        jobs.clear();
        jobs.addAll(json.map<Job>((json) => Job.fromJson(json)).toList());
        jobs.sort((a, b) => DateTime.parse("${b.jobDeadline}")
            .compareTo(DateTime.parse("${a.jobDeadline}")));
        return jobs;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return jobs;
    }
  }

  bool checkIfExist(int id, List<Job> savedJobs) {
    var x = savedJobs.where((element) => element.jobID == id);
    if (x.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

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
      savedJobsController.savedJobs.value = jobs.where((job) {
        return job.jobTitle.toString().toLowerCase().contains(
              value.toLowerCase(),
            );
      }).toList();
    }
  }

  @override
  void onInit() async {
    jobs = await getJobs();
    jobs.sort((a, b) => DateTime.parse("${b.jobDeadline}")
        .compareTo(DateTime.parse("${a.jobDeadline}")));
    displayList.value = jobs;
    super.onInit();
  }
}
