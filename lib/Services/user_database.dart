import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo/Models/my_user.dart';

class UserDatabase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth Auth = FirebaseAuth.instance;

  Future<bool> CreatedUserInDB(MyUser user) async {
    try {
      await firestore.collection("Users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "display name": user.displayname,
        "avatar url": user.avatarUrl,
        "chatroom id": user.chatRoomId,
        "friend id": user.friendUid,
        "gender": user.gender,
        "phone number": user.phone,
        "account created": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print('Error during Database process: $e');
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("Users")
        .doc("nvcHObxVvgTYtmCafgw0QGuJ4Ox1")
        .get();

    myUser.uid = documentSnapshot.data()!['uid'];

    myUser.email = documentSnapshot.data()!['email'];
    myUser.gender = documentSnapshot.data()!['gender'];
    myUser.password = documentSnapshot.data()!['password'];
    myUser.avatarUrl = documentSnapshot.data()!['avatar url'];
    myUser.displayname = documentSnapshot.data()!['display name'];
    myUser.username = documentSnapshot.data()!['username'];
    myUser.friendUid = documentSnapshot.data()!['friend id'];
    myUser.chatRoomId = documentSnapshot.data()!['chatroom id'];
    myUser.phone = documentSnapshot.data()!['phone number'];

    return myUser;
  }
}
