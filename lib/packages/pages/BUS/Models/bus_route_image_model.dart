class BusRouteImages {
  int? id;
  String? image;
  String? ramadanImage;

  BusRouteImages({this.id, this.image, this.ramadanImage});

  BusRouteImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    ramadanImage = json['ramadan_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['ramadan_image'] = ramadanImage;
    return data;
  }
}
