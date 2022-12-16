class TutorRequest {
  int? studentId;
  int? courseId;
  String? semesterCompletion;
  double? grade;

  TutorRequest(
      {this.studentId, this.courseId, this.semesterCompletion, this.grade});

  TutorRequest.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    courseId = json['course_id'];
    semesterCompletion = json['semester_completion'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['student_id'] = studentId;
    data['course_id'] = courseId;
    data['semester_completion'] = semesterCompletion;
    data['grade'] = grade;
    return data;
  }
}
