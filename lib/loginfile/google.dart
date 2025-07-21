import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Googlelogin {
  final GoogleSignIn googlegign = GoogleSignIn();
  final FirebaseAuth authe = FirebaseAuth.instance;

  Future<UserCredential?> google() async {
    try {
      final GoogleSignInAccount? googleUser = await googlegign.signIn();
      if (googleUser == null) return null;

      final GoogleSignInAuthentication fireauth =
          await googleUser.authentication;

      final credit = GoogleAuthProvider.credential(
        accessToken: fireauth.accessToken,
        idToken: fireauth.idToken,
      );
      return await authe.signInWithCredential(credit);
    } catch (e) {
      print("google error $e");
      return null;
    }
  }
}
