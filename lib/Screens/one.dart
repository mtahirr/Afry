import 'package:afari/googleSignInScreens/provider/google_sign_in.dart';
import 'package:afari/googleSignInScreens/widget/background_painter.dart';
import 'package:afari/googleSignInScreens/widget/sign_up_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';

class OneScreen extends StatefulWidget {

  @override
  _OneScreenState createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final provider = Provider.of<GoogleSignInProvider>(context);

          if (provider.isSigningIn) {
            return buildLoading();
          } else if (snapshot.hasData) {

            return HomePage();
          } else {
            return SignUpWidget();
          }
        },
      ),
    );
  }





  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      CustomPaint(painter: BackgroundPainter()),
      Center(child: CircularProgressIndicator()),
    ],
  );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('FirebaseFirestore', FirebaseFirestore));
    properties.add(DiagnosticsProperty('FirebaseFirestore', FirebaseFirestore));
  }


  Future<void> writeDataToSharedPref() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userProfileImage", FirebaseAuth.instance.currentUser.photoURL, );
    prefs.setString( "CurrentUserUid", FirebaseAuth.instance.currentUser.uid.toString(),);
    prefs.setString("CurrentUserEmail", FirebaseAuth.instance.currentUser.email);
    prefs.setString("CurrentUserName", FirebaseAuth.instance.currentUser.displayName,);
    print("3333333333333333333333");

    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff on Google Login Page %%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));


  }
}
