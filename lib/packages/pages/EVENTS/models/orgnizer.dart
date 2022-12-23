class Organizers {
  String? organizerImage;
  int? organizerId;
  String? organizerName;

  Organizers({this.organizerImage, this.organizerId, this.organizerName});

  Organizers.fromJson(Map<String, dynamic> json) {
    organizerImage = json['organizer_image'];
    organizerId = json['organizer_id'];
    organizerName = json['organizer_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['organizer_image'] = organizerImage;
    data['organizer_id'] = organizerId;
    data['organizer_name'] = organizerName;
    return data;
  }
}
