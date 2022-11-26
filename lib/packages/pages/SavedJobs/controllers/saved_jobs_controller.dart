import 'package:get/get.dart';
import 'package:psut_portal/Database/Jobs/jobs_db.dart';
import 'package:psut_portal/packages/pages/JOBS/models/job.dart';

class SavedJobsController extends GetxController {
  RxList<Job> savedJobs = <Job>[].obs;
  List<Map<dynamic, dynamic>> jobs = [];
  late JobsSqlDb sqlDb;

  void parseJsonToSaved(json) {
    for (var job in json) {
      job = job as Map<String, dynamic>;
      savedJobs.add(Job.fromSavedJobJson(job));
    }
  }

  void removeFromSaved(int id) async {
    await sqlDb.deleteData('''DELETE FROM "Jobs"
                                             WHERE $id = id''');

    savedJobs.removeWhere((element) => element.jobID == id);
  }

  void addToSaved(Job job) async {
    var data = await sqlDb
        .readData('''SELECT * FROM "Jobs" WHERE id = ${job.jobID}''');
    if (data.isEmpty) {
      await sqlDb.insertData('''INSERT INTO 'Jobs' (id,
                        jobTitle,jobResponsanbilities,jobRequierments,jobDeadline,college,jobIconImage,jobDescription,companyName)
                        VALUES (
                        '${job.jobID}',
                        '${job.jobTitle}',
                        '${job.jobResponsanbilities}',
                        '${job.jobRequierments}',
                        '${job.jobDeadline}',
                        '${job.college}',
                        '${job.jobIconImage}',
                        '${job.jobDescription}',
                        '${job.companyName}'
                      )
                      ''');
      savedJobs.add(Job.fromJson(job.toJson()));
    } else {
      return;
    }
  }

  @override
  void onInit() async {
    sqlDb = JobsSqlDb();
    jobs = await sqlDb.readData('''SELECT * FROM "Jobs"''');
    parseJsonToSaved(jobs);

    super.onInit();
  }

  @override
  void onClose() {
    savedJobs.clear();
    super.onClose();
  }
}
