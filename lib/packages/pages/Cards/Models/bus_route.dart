class BusRoute {
  int? monWedBack;
  int? monWedPresence;
  int? sunTueThuPresence;
  String? route;
  int? sunTueThuBack;
  int? busRouteId;
  String? pickupDropoff;
  int? studentId;

  BusRoute({
    this.monWedBack,
    this.monWedPresence,
    this.sunTueThuPresence,
    this.route,
    this.sunTueThuBack,
    this.busRouteId,
    this.pickupDropoff,
    this.studentId,
  });

  BusRoute.fromJson(Map<String, dynamic> json) {
    monWedBack = json['mon_wed_back'];
    monWedPresence = json['mon_wed_presence'];
    sunTueThuPresence = json['sun_tue_thu_presence'];
    route = json['route'];
    sunTueThuBack = json['sun_tue_thu_back'];
    busRouteId = json['bus_route_id'];
    pickupDropoff = json['pickup_dropoff'];
    studentId = json['student_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mon_wed_back'] = monWedBack;
    data['mon_wed_presence'] = monWedPresence;
    data['sun_tue_thu_presence'] = sunTueThuPresence;
    data['route'] = route;
    data['sun_tue_thu_back'] = sunTueThuBack;
    data['bus_route_id'] = busRouteId;
    data['pickup_dropoff'] = pickupDropoff;
    data['student_id'] = studentId;
    return data;
  }
}
