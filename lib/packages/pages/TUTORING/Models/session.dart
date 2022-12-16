class Sessions {
  String? startTime;
  int? tutorId;
  String? endTime;
  int? sessionId;
  String? day;
  int? courseId;
  int? total;

  Sessions(
      {this.startTime,
      this.tutorId,
      this.endTime,
      this.sessionId,
      this.day,
      this.courseId,
      this.total});

  Sessions.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    tutorId = json['tutor_id'];
    endTime = json['end_time'];
    sessionId = json['session_id'];
    day = json['day'];
    courseId = json['course_id'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start_time'] = startTime;
    data['tutor_id'] = tutorId;
    data['end_time'] = endTime;
    data['session_id'] = sessionId;
    data['day'] = day;
    data['course_id'] = courseId;
    data['total'] = total;
    return data;
  }
}
