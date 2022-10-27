class Organizers {
  String? organizerName;
  String? organizerImage;

  Organizers({this.organizerName, this.organizerImage});

  Organizers.fromJson(Map<String, dynamic> json) {
    organizerName = json['organizer_name'];
    organizerImage = json['organizer_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['organizer_name'] = organizerName;
    data['organizer_image'] = organizerImage;
    return data;
  }
}
