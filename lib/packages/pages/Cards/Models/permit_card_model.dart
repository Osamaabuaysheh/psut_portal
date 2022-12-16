class PermitCardModel {
  String? carType;
  String? carOwnerName;
  int? phoneNumber;
  int? permitNumber;
  int? studentId;
  String? carColor;
  int? permitId;
  String? licenseNumber;
  String? colleage;
  int? ownerId;

  PermitCardModel(
      {this.carType,
        this.carOwnerName,
        this.phoneNumber,
        this.permitNumber,
        this.studentId,
        this.carColor,
        this.permitId,
        this.licenseNumber,
        this.colleage,
        this.ownerId});

  PermitCardModel.fromJson(Map<String, dynamic> json) {
    carType = json['car_type'];
    carOwnerName = json['car_owner_name'];
    phoneNumber = json['phone_number'];
    permitNumber = json['permit_number'];
    studentId = json['student_id'];
    carColor = json['car_color'];
    permitId = json['permit_id'];
    licenseNumber = json['license_number'];
    ownerId = json['owner_id'];
    colleage = json['colleage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['car_type'] = carType;
    data['car_owner_name'] = carOwnerName;
    data['phone_number'] = phoneNumber;
    data['permit_number'] = permitNumber;
    data['student_id'] = studentId;
    data['car_color'] = carColor;
    data['permit_id'] = permitId;
    data['license_number'] = licenseNumber;
    data['owner_id'] = ownerId;
    data['colleage']=colleage;
    return data;
  }
}
