import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  var textEditingController = TextEditingController().obs;
  static final List<String> jobs = [
    "Amazon",
    "Google",
    "Qtech",
    "Xtechs",
    "Samsusng",
    "Apple",
  ];

  var displayList = List.from(jobs).obs;

  int get displayListLength => displayList.length.obs.toInt();

  get returnJobs => jobs;

  void sortListAlphabeticaly() {
    displayList.sort();
  }

  void reverseSortList() {
    displayList.value = displayList.reversed.toList();
  }

  void updateList(String value) {
    displayList.value = jobs
        .where(
          (job) => job.toString().toLowerCase().contains(
                value.toLowerCase(),
              ),
        )
        .toList();
    update();
  }
}
