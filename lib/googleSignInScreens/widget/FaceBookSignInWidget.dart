import 'dart:convert';

import 'package:afari/Screens/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class FaceBookSignInWidget extends StatefulWidget {

  @override
  _FaceBookSignInWidgetState createState() => _FaceBookSignInWidgetState();
}

class _FaceBookSignInWidgetState extends State<FaceBookSignInWidget> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  var profile;
  String _message = 'Log in/out by pressing the buttons below.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          color: Colors.blue.shade800,
          borderRadius:
          BorderRadius.all(Radius.circular(12)),
        ),
        child: GestureDetector(
          onTap: () async {
            await _login();
            print(_message);
          },
          child: Row(
            children: [
              // facebook icon
              Container(
                  width: MediaQuery.of(context).size.width *
                      0.19,
                  child:
                  Image.asset('assets/facebook_ic.png')),
              SizedBox(
                width:
                MediaQuery.of(context).size.width * 0.0,
              ),
              Container(
                // width:
                // MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    children: [
                      Text(
                        'الصتابعة مع',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'JF Flat'),
                      ),
                      Text(
                        'facebook ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'JF Flat'),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
  Future<Null> _login() async {
    final FacebookLoginResult result =
    await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        _showMessage('''
         Logged in!
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        var graphResponse = await http.get(
            Uri.parse('https://graph.facebook.com/v3.3/me?fields=name,picture,friends,email&access_token=${
                accessToken.token}'));
        profile = json.decode(graphResponse.body);
// uid = 'userUId', profile["id"];

        final firebaseAuthCred = FacebookAuthProvider.credential(accessToken.token);
        final result2 = await FirebaseAuth.instance.signInWithCredential(firebaseAuthCred);
        print(result2);
        writeDataToSharedPref(profile);
        writeDataToFireStore(profile);

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage()));

        // getInfoMethod(accessToken.token);
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        _showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }


  void _showMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  Future<void> writeDataToSharedPref(profile) async {
    print("111111111111111");
    print(profile["picture"]["data"]["url"]);
    print("2222222222222222");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userProfileImage', profile["picture"]["data"]["url"]);
    prefs.setString('CurrentUserName', profile["name"]);
    prefs.setString('CurrentUserEmail', profile["email"]);
    prefs.setString('CurrentUserUid', FirebaseAuth.instance.currentUser.uid.toString());
    print("3333333333333333333333");

    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff%%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));


  }

  void writeDataToFireStore(profile) {
    print("88888888888888888888888888888888888888888");
    FirebaseFirestore.instance.collection("Users").doc(FirebaseAuth.instance.currentUser.uid).set({
      'userProfileImage': profile["picture"]["data"]["url"],
      'CurrentUserEmail' : 'profile["email"]',
      'CurrentUserName' : profile['name'],
      'CurrentUserUid': FirebaseAuth.instance.currentUser.uid.toString(),
    });
    print("88888888888888888888888888888888888888888");

  }
}
