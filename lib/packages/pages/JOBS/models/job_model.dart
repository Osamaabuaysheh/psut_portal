import 'package:get/get.dart';

class JobModel {
  final int index;
  final String jobTitle;
  final String jobDescription;
  RxBool isFavourite;

  JobModel({
    this.index = -1,
    this.jobTitle = "",
    this.jobDescription = "",
    required this.isFavourite,
  });
}
