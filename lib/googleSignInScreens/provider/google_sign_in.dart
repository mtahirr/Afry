import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';



class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  bool _isSigningIn;

  GoogleSignInProvider() {
    _isSigningIn = false;
  }

  bool get isSigningIn => _isSigningIn;

  set isSigningIn(bool isSigningIn) {
    _isSigningIn = isSigningIn;

    notifyListeners();
  }

  Future login() async {
    isSigningIn = true;

    final user = await googleSignIn.signIn();
    if (user == null) {
      isSigningIn = false;
      return;
    } else {
      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      writeDataToSharedPref();
      isSigningIn = false;
      writeDataToSharedPref();
      FirebaseFirestore.instance.collection("Users").doc(FirebaseAuth.instance.currentUser.uid.toString()).set(
          {
            "userProfileImage": FirebaseAuth.instance.currentUser.photoURL,
            "CurrentUserUid": FirebaseAuth.instance.currentUser.uid.toString(),
            "CurrentUserName": FirebaseAuth.instance.currentUser.displayName,
            "CurrentUserEmail": FirebaseAuth.instance.currentUser.email.toString(),
          });
    }
  }

  void logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }


  Future<void> writeDataToSharedPref() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userProfileImage", FirebaseAuth.instance.currentUser.photoURL, );
    prefs.setString( "CurrentUserUid", FirebaseAuth.instance.currentUser.uid.toString(),);
    prefs.setString("CurrentUserEmail", FirebaseAuth.instance.currentUser.email.toString());
    prefs.setString("CurrentUserName", FirebaseAuth.instance.currentUser.displayName,);
    print("3333333333333333333333");

    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff on Google Login Page %%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));


  }
}
