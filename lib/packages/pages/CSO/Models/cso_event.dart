class CSOEvent {
  int? eventId;
  int? ownerId;
  int? hoursCredit;
  String? startTime;
  String? eventName;
  String? startDate;
  String? category;
  String? supervisor;
  String? description;
  String? location;
  String? endTime;
  String? endDate;
  String? gender;
  String? image;

  CSOEvent(
      {this.eventId,
      this.startTime,
      this.eventName,
      this.startDate,
      this.category,
      this.supervisor,
      this.description,
      this.ownerId,
      this.location,
      this.endTime,
      this.endDate,
      this.gender,
      this.hoursCredit,
      this.image});

  CSOEvent.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    startTime = json['start_time'];
    eventName = json['event_name'];
    startDate = json['start_date'];
    category = json['category'];
    supervisor = json['supervisor'];
    description = json['description'];
    ownerId = json['owner_id'];
    location = json['location'];
    endTime = json['end_time'];
    endDate = json['end_date'];
    gender = json['gender'];
    hoursCredit = json['hours_credit'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['event_id'] = eventId;
    data['start_time'] = startTime;
    data['event_name'] = eventName;
    data['start_date'] = startDate;
    data['category'] = category;
    data['supervisor'] = supervisor;
    data['description'] = description;
    data['owner_id'] = ownerId;
    data['location'] = location;
    data['end_time'] = endTime;
    data['end_date'] = endDate;
    data['gender'] = gender;
    data['hours_credit'] = hoursCredit;
    data['image'] = image;
    return data;
  }
}
