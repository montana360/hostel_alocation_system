import 'package:cloud_firestore/cloud_firestore.dart';

class HostelModel {
  String id;
  String name;
  String image;
  String location;
  String description;
  String number_rooms;
  Timestamp createdAt;
  Timestamp updatedAt;

  HostelModel(
      {this.id,
      this.name,
      this.image,
      this.location,
      this.description,
      this.number_rooms,
      this.createdAt,
      this.updatedAt});

  //  data from the server
  factory HostelModel.fromMap(map) {
    return HostelModel(
        id: map["id"],
        name: map["name"],
        image: map["image"],
        location: map["location"],
        number_rooms: map["number_rooms"],
        description: map["description"],
        createdAt: map["createdAt"],
        updatedAt: map["updatedAt"]);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'location': location,
      'number_rooms': number_rooms,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
