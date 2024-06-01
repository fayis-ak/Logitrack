import 'package:flutter/rendering.dart';

class DeliveryBoys {
  String Name;
  String Email;
  String DLNumber;
  String Vehiclenumber;
  String? id;
  String vehicl;

  DeliveryBoys({
    required this.Name,
    required this.Email,
    required this.DLNumber,
    required this.Vehiclenumber,
    this.id,
    required this.vehicl,
  });

  Map<String, dynamic> tojson(uid) => {
        'Name': Name,
        'Email': Email,
        'DLNumber': DLNumber,
        'VehicleNumber': Vehiclenumber,
        'id': uid,
        'vehicle':vehicl,
      };

  factory DeliveryBoys.fromJson(Map<String, dynamic> json) {
    return DeliveryBoys(
      Name: json['Name'],
      Email: json['Email'],
      DLNumber: json['DLNumber'],
      Vehiclenumber: json['VehicleNumber'],
      id: json['id'],
      vehicl: json['vehicle']
    );
  }
}
