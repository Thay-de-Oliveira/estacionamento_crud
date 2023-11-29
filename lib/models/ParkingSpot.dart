class ParkingSpotModel {
  final String id;
  final String parkingSpotNumber;
  final String brandCar;
  final String modelCar;
  final String plateCar;

  ParkingSpotModel(this.id, this.parkingSpotNumber, this.brandCar,
      this.modelCar, this.plateCar);

  ParkingSpotModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        parkingSpotNumber = json['parkingSpotNumber'],
        brandCar = json['brandCar'],
        modelCar = json['modelCar'],
        plateCar = json['plateCar'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'parkingSpotNumber': parkingSpotNumber,
        'brandCar': brandCar,
        'modelCar': modelCar,
        'plateCar': plateCar,
      };
}
