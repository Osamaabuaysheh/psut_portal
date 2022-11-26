import 'package:psut_portal/packages/pages/EVENTS/models/orgnizer.dart';

class Event {
  String? eventName;
  String? location;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  String? description;
  String? image;
  List<Organizers>? organizers;
  String? clubName;

  Event(
      {this.eventName,
      this.location,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime,
      this.description,
      this.image,
      this.organizers,
      this.clubName});

  Event.fromJson(Map<String, dynamic> json) {
    eventName = json['event_name'];
    location = json['location'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    description = json['description'];
    clubName = json['club_name'];
    image = json['image'];
    if (json['organizers'] != null) {
      organizers = <Organizers>[];
      json['organizers'].forEach((v) {
        organizers!.add(Organizers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['event_name'] = eventName;
    data['location'] = location;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['description'] = description;
    data['image'] = image;
    data['club_name'] = clubName;
    if (organizers != null) {
      data['organizers'] = organizers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
