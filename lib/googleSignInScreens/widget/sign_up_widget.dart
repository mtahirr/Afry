import 'dart:io';
import 'package:afari/Screens/three.dart';
import 'package:afari/Screens/SignUpFirebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'FaceBookSignInWidget.dart';
import 'background_painter.dart';
import 'google_signup_button_widget.dart';
import 'package:http/http.dart' as http;

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {

  static final FacebookLogin facebookSignIn = new FacebookLogin();
var profile;
  String _message = 'Log in/out by pressing the buttons below.';

  bool isSignIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;
  FacebookLogin facebookLogin = FacebookLogin();

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Scaffold(
            body: SafeArea(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash_bg.png'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08),
                        // logo text 'مرحبا بك',
                        Text(
                          'مرحبًا بك',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'JF Flat',
                            fontSize: 55,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        // text 'فري',
                        Image(
                          image: AssetImage('assets/splash_logo.png'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.14),
                        // select langugae 'اختر اللغة',
                        Text(
                          'اختر اللغة',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JF Flat'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.26,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: Center(
                                  // English langugae
                                  child: Text(
                                    'EN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JF Flat'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: Row(
                                  children: [
                                    // Arabic langugae
                                    Text(
                                      'عربي',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JF Flat'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.12,
                        ),
                        // buttons container
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                AppleSignInMethod();
                              },
                              child: Row(
                                children: [
                                  // apple icon
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.19,
                                      child: Image.asset('assets/apple_ic.png')),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.4,
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
                                            'Apple ',
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
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.02,
                        ),

                        FaceBookSignInWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.02,
                        ),
                        GoogleSignupButtonWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpFirebase()));
                                },
                                child: Container(
                                    // sign up
                                    child: Text(
                                  'التسجيل',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'JF Flat',
                                  ),
                                )),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Container(
                                    // login
                                    child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JF Flat'),
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                'Welcome Back To MyApp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
        ],
      );






  Future<void> gooleSignout() async {

    await _auth.signOut().then((onValue) {
      setState(() {
        facebookLogin.logOut();
        isSignIn = false;
      });
    });
  }



  Future<void> writeDataToSharedPref(profile) async {
    print("111111111111111");
    print(profile["picture"]["data"]["url"]);
    print("2222222222222222");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userProfileImage', profile["picture"]["data"]["url"]);
    prefs.setString('userName', profile["name"]);
    prefs.setString('userEmail', profile["email"]);
    prefs.setString('userId', profile["id"]);
    print("3333333333333333333333");

    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff%%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('userName'));
    print(prefs.getString('userEmail'));
    print(prefs.getString('userId'));


  }

  AppleSignInMethod()async{
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        // TODO: Set the `clientId` and `redirectUri` arguments to the values you entered in the Apple Developer portal during the setup
        clientId:
        'com.aboutyou.dart_packages.sign_in_with_apple.example',
        redirectUri: Uri.parse(
          'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
        ),
      ),
      // TODO: Remove these if you have no need for them
      nonce: 'example-nonce',
      state: 'example-state',
    );

    print(credential);

    // This is the endpoint that will convert an authorization code obtained
    // via Sign in with Apple into a session in your system
    final signInWithAppleEndpoint = Uri(
      scheme: 'https',
      host: 'flutter-sign-in-with-apple-example.glitch.me',
      path: '/sign_in_with_apple',
      queryParameters: <String, String>{
        'code': credential.authorizationCode,
        if (credential.givenName != null)
          'firstName': credential.givenName,
        if (credential.familyName != null)
          'lastName': credential.familyName,
        'useBundleId':
        Platform.isIOS || Platform.isMacOS ? 'true' : 'false',
        if (credential.state != null) 'state': credential.state,
      },
    );

    final session = await http.Client().post(
      signInWithAppleEndpoint,
    );

    // If we got this far, a session based on the Apple ID credential has been created in your system,
    // and you can now set this as the app's session
    print(session);
  }
}

//
