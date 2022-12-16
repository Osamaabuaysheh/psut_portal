class Tutor {
  int? year;
  int? tutorId;
  int? studentId;
  double? gpa;
  int? ownerId;
  String? tutorName;

  Tutor(
      {this.year,
      this.tutorId,
      this.studentId,
      this.gpa,
      this.ownerId,
      this.tutorName});

  Tutor.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    tutorId = json['tutor_id'];
    studentId = json['student_id'];
    gpa = json['gpa'];
    ownerId = json['owner_id'];
    tutorName = json['tutor_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['year'] = year;
    data['tutor_id'] = tutorId;
    data['student_id'] = studentId;
    data['gpa'] = gpa;
    data['owner_id'] = ownerId;
    data['tutor_name'] = tutorName;
    return data;
  }
}
