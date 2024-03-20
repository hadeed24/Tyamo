import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayname;
  String? avatarUrl;
  String? friendUid;
  String? chatRoomId;
  String? gender;
  String? phone;
  Timestamp? accCreated;

MyUser({
    this.uid,
    this.email,
    this.password,
    this.username,
    this.displayname,
    this.avatarUrl,
    this.friendUid,
    this.chatRoomId,
    this.gender,
    this.phone,
  });
}
