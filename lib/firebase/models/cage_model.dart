import 'package:cloud_firestore/cloud_firestore.dart';

class Cage {
  String? description;
  String? cageName;
  String? id;

  Cage({this.description, this.cageName, this.id});

  Cage.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    description = data['Description'] ?? '';
    cageName = data['CageName'] ?? '';
    id = documentSnapshot.id;
  }

  Cage.fromQueryDocumentSnapshot({QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    description = data['Description'] ?? '';
    cageName = data['CageName'] ?? '';
    id = queryDocSnapshot.id;
  }

  Cage.fromJson(Map<String, dynamic> json) {
    description = json['Description'] as String;
    cageName = json['CageName'] as String;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Description'] = this.description;
    data['CageName'] = this.cageName;
    data['id'] = this.id;
    return data;
  }
}
