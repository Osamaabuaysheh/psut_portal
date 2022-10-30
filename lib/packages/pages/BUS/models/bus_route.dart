class BusRoute {
  String? busRouteName;
  String? firstRoute;
  String? secondRoute;
  String? thirdRoute;
  String? fourthRoute;
  String? locationTrip;

  BusRoute(
      {this.busRouteName,
      this.firstRoute,
      this.secondRoute,
      this.thirdRoute,
      this.fourthRoute,
      this.locationTrip});

  BusRoute.fromJson(Map<String, dynamic> json) {
    busRouteName = json['bus_route_name'];
    firstRoute = json['first_route'];
    secondRoute = json['second_route'];
    thirdRoute = json['third_route'];
    fourthRoute = json['fourth_route'];
    locationTrip = json['location_trip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bus_route_name'] = busRouteName;
    data['first_route'] = firstRoute;
    data['second_route'] = secondRoute;
    data['third_route'] = thirdRoute;
    data['fourth_route'] = fourthRoute;
    data['location_trip'] = locationTrip;
    return data;
  }
}
