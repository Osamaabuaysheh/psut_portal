import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_cards.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomSearchDelegate extends SearchDelegate {
  final JobsController controller = Get.find();
  final SavedJobsController savedJobsController = Get.find();
  final TabBarController tabBarController = Get.find();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var searchList = query.isEmpty
        ? tabBarController.tabBarcontroller.index == 0
            ? controller.displayList
            : savedJobsController.savedJobs
        : controller.displayList
            .where(
              (element) => element.jobTitle.toString().toLowerCase().contains(
                    query.toLowerCase(),
                  ),
            )
            .toList();
    if (query.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
              style: CustomTheme.details,
            ),
          )
        ],
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () => Get.toNamed(
            JobDesc.id,
            arguments: [searchList[index]],
          ),
          child: JobsCard(
            jobID: searchList[index].jobID ?? -1,
            jobTitle: searchList[index].jobTitle ?? "",
            companyName: searchList[index].companyName ?? "",
            date: searchList[index].jobDeadline ?? "",
            college: searchList[index].college ?? "",
            onPressed: () async {
              savedJobsController.addToSaved(searchList[index]);
            },
          ),
        ),
        itemCount: searchList.length.toInt(),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var searchList = query.isEmpty
        ? tabBarController.tabBarcontroller.index == 0
            ? controller.displayList
            : savedJobsController.savedJobs
        : controller.displayList
            .where(
              (element) => element.jobTitle.toString().toLowerCase().contains(
                    query.toLowerCase(),
                  ),
            )
            .toList();

    return searchList.isNotEmpty
        ? ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () => Get.toNamed(
                JobDesc.id,
                arguments: [searchList[index]],
              ),
              child: JobsCard(
                jobID: searchList[index].jobID ?? -1,
                jobTitle: searchList[index].jobTitle ?? "",
                companyName: searchList[index].companyName ?? "",
                date: searchList[index].jobDeadline ?? "",
                college: searchList[index].college ?? "",
                onPressed: () async {
                  savedJobsController.addToSaved(searchList[index]);
                },
              ),
            ),
            itemCount: searchList.length.toInt(),
          )
        : Center(
            child: Text("No Jobs Right Now", style: CustomTheme.details),
          );
  }
}
