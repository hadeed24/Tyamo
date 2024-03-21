import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo/Models/my_user.dart';
import 'package:tyamo/Services/user_database.dart';

class UserController {
  MyUser currentuser = MyUser();
  FirebaseAuth Auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  MyUser user = MyUser();
  Future<bool> userRegister(String email, String password) async {
    try {
      UserCredential authResult = await Auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (authResult.user != null) {
        print("XXXXXXXXXXXXXX IN Register PAGE XXXXXXXXXXXXXXXXX");
        user.uid = authResult.user!.uid;
        user.email = authResult.user!.email;
        user.password = password;
      }
      return true;
// Registration successful, you can perform further actions here if needed
    } catch (e) {
      print('Error during registration: $e');
      return false;
// Handle the error appropriately, e.g., show a snackbar or toast with error message
    }
  }

  Future<bool> userlogin(String email, String password) async {
    try {
      UserCredential loginResult = await Auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (loginResult.user != null) {
        print("XXXXXXXXXXXXXX IN LOGIN PAGE XXXXXXXXXXXXXXXXX");

        currentuser =
            await UserDatabase().getUserInfoById(loginResult.user!.uid);
        print(currentuser.email);
      }
      return true;
// Registration successful, you can perform further actions here if needed
    } catch (e) {
      print('Error during Loging In: $e');
      return false;
// Handle the error appropriately, e.g., show a snackbar or toast with error message
    }
  }

  Future<bool> signOut() async {
    try {
      await Auth.signOut();
      return true;
    } catch (e) {
      print("Error during signing out: $e");
      return false;
    }
  }
}
