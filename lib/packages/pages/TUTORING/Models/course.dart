import 'package:psut_portal/packages/pages/TUTORING/Models/session.dart';
import 'package:psut_portal/packages/pages/TUTORING/Models/tutor.dart';

class Course {
  String? courseName;
  String? college;
  int? courseId;
  List<Sessions>? sessions;
  Tutor? tutor;

  Course(
      {this.courseName,
      this.college,
      this.courseId,
      this.sessions,
      this.tutor});

  Course.fromJson(Map<String, dynamic> json) {
    courseName = json['course_name'];
    college = json['college'];
    courseId = json['course_id'];
    if (json['sessions'] != null) {
      sessions = <Sessions>[];
      json['sessions'].forEach((v) {
        sessions!.add(Sessions.fromJson(v));
      });
    }
    tutor = json['Tutor'] != null ? Tutor.fromJson(json['Tutor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['course_name'] = courseName;
    data['college'] = college;
    data['course_id'] = courseId;
    if (sessions != null) {
      data['sessions'] = sessions!.map((v) => v.toJson()).toList();
    }
    if (tutor != null) {
      data['Tutor'] = tutor!.toJson();
    }
    return data;
  }
}
