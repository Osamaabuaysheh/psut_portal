class Student {
  int? studentId;
  String? fullName;
  String? fullnameArabic;
  String? email;
  String? colleage;
  int? year;
  String? url;
  int? hoursCompleted;

  Student(
      {this.studentId,
      this.fullName,
      this.fullnameArabic,
      this.email,
      this.colleage,
      this.year,
      this.url,
      this.hoursCompleted});

  Student.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    fullName = json['full_name'];
    fullnameArabic = json['full_name_arabic'];
    email = json['email'];
    colleage = json['colleage'];
    year = json['year'];
    url = json['url'];
    hoursCompleted = json['hours_completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['student_id'] = studentId;
    data['full_name'] = fullName;
    data['full_name_arabic'] = fullnameArabic;
    data['email'] = email;
    data['colleage'] = colleage;
    data['year'] = year;
    data['url'] = url;
    data['hours_completed'] = hoursCompleted;
    return data;
  }
}
