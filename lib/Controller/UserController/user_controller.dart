import 'package:firebase_auth/firebase_auth.dart';

class UserController {
  FirebaseAuth Auth = FirebaseAuth.instance;
 userRegister(String email, String password) async {
  
    try {
      UserCredential authResult = await Auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Registration successful, you can perform further actions here if needed
    } catch (e) {
      print('Error during registration: $e');
      // Handle the error appropriately, e.g., show a snackbar or toast with error message
    }
  }
}
