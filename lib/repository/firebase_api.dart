import 'package:firebase_auth/firebase_auth.dart';

class FirebaseApi {
  // CODIGO DE PROFESOR EN TALLER
  Future<bool> registerUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    } on FirebaseException catch (e) {
      print(e);
      return false;
    }
  }

  Future<String?> loginUser(String email, String password) async {
    try {
      final credential = FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user?.uid;
    }
  }
}