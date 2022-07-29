import 'package:cloud_firestore/cloud_firestore.dart';

class RabbitProfile {
  String? rabbitName;
  String? rabbitType;
  int? cage;
  int? height;
  int? weight;
  String? dateofPurchase;
  int? width;
  String? rabbitBreed;
  int? rabbitNumber;
  String? id;

  RabbitProfile(
      {this.rabbitName,
      this.rabbitType,
      this.cage,
      this.height,
      this.weight,
      this.dateofPurchase,
      this.width,
      this.rabbitBreed,
      this.rabbitNumber,
      this.id});

  RabbitProfile.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    rabbitName = data['RabbitName'] ?? '';
    rabbitType = data['RabbitType'] ?? '';
    cage = data['Cage'] ?? 0;
    height = data['Height'] ?? 0;
    weight = data['Weight'] ?? 0;
    dateofPurchase = data['DateofPurchase'] ?? '';
    width = data['Width'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    rabbitNumber = data['RabbitNumber'] ?? 0;
    id = documentSnapshot.id;
  }

  RabbitProfile.fromQueryDocumentSnapshot(
      {QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    rabbitName = data['RabbitName'] ?? '';
    rabbitType = data['RabbitType'] ?? '';
    cage = data['Cage'] ?? 0;
    height = data['Height'] ?? 0;
    weight = data['Weight'] ?? 0;
    dateofPurchase = data['DateofPurchase'] ?? '';
    width = data['Width'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    rabbitNumber = data['RabbitNumber'] ?? 0;
    id = queryDocSnapshot.id;
  }

  RabbitProfile.fromJson(Map<String, dynamic> json) {
    rabbitName = json['RabbitName'] as String;
    rabbitType = json['RabbitType'] as String;
    cage = json['Cage'] as int;
    height = json['Height'] as int;
    weight = json['Weight'] as int;
    dateofPurchase = json['DateofPurchase'] as String;
    width = json['Width'] as int;
    rabbitBreed = json['RabbitBreed'] as String;
    rabbitNumber = json['RabbitNumber'] as int;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['RabbitName'] = this.rabbitName;
    data['RabbitType'] = this.rabbitType;
    data['Cage'] = this.cage;
    data['Height'] = this.height;
    data['Weight'] = this.weight;
    data['DateofPurchase'] = this.dateofPurchase;
    data['Width'] = this.width;
    data['RabbitBreed'] = this.rabbitBreed;
    data['RabbitNumber'] = this.rabbitNumber;
    data['id'] = this.id;
    return data;
  }
}
