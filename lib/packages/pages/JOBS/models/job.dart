class Job {
  String? companyName;
  String? jobTitle;
  String? jobResponsanbilities;
  String? jobRequierments;
  String? jobDeadline;
  String? college;
  String? jobIconImage;
  String? jobDescription;

  Job(
      {this.companyName,
      this.jobTitle,
      this.jobResponsanbilities,
      this.jobRequierments,
      this.jobDeadline,
      this.college,
      this.jobIconImage,
      this.jobDescription});

  Job.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    jobTitle = json['job_title'];
    jobResponsanbilities = json['job_responsanbilities'];
    jobRequierments = json['job_requierments'];
    jobDeadline = json['job_Deadline'];
    jobIconImage = json['job_icon_image'];
    jobDescription = json['job_description'];
    college = json['college'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['company_name'] = companyName;
    data['job_title'] = jobTitle;
    data['job_responsanbilities'] = jobResponsanbilities;
    data['job_requierments'] = jobRequierments;
    data['job_Deadline'] = jobDeadline;
    data['job_icon_image'] = jobIconImage;
    data['job_description'] = jobDescription;
    data['college'] = college;
    return data;
  }
}
