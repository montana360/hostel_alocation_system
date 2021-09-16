import 'package:cloud_firestore/cloud_firestore.dart';

class RoomsModel {
  String id;
  String hostel_id;
  String image;
  String room_type;
  String description;
  Timestamp createdAt;
  Timestamp updatedAt;

  RoomsModel(
      {this.id,
      this.hostel_id,
      this.image,
      this.room_type,
      this.description,
      this.createdAt,
      this.updatedAt
      });

      //  data from the server
  factory RoomsModel.fromMap(map) {
    return RoomsModel(
        id: map["id"],
        hostel_id: map["hostel_id"],
        image: map["image"],
        room_type: map["room_type"],
        description: map["description"],
        createdAt: map["createdAt"],
        updatedAt: map["updatedAt"]);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hostel_id': hostel_id,
      'image': image,
      'room_type': room_type,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
