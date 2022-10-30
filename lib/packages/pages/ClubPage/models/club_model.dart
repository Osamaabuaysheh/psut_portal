class Club {
  int? clubId;
  String? clubName;
  String? clubImage;
  String? clubIconImage;
  String? description;
  String? link;
  String? contactInfo;

  Club(
      {this.clubId,
      this.clubName,
      this.clubImage,
      this.clubIconImage,
      this.description,
      this.link,
      this.contactInfo});

  Club.fromJson(Map<String, dynamic> json) {
    clubId = json['club_id'];
    clubName = json['club_name'];
    clubImage = json['club_image'];
    clubIconImage = json['club_icon_image'];
    description = json['description'];
    link = json['link'];
    contactInfo = json['contact_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['club_id'] = clubId;
    data['club_name'] = clubName;
    data['club_image'] = clubImage;
    data['club_icon_image'] = clubIconImage;
    data['description'] = description;
    data['link'] = link;
    data['contact_info'] = contactInfo;
    return data;
  }
}
