import 'package:afari/Screens/four.dart';
import 'package:afari/Screens/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  UserCredential userCredential;


  bool isLoading = false;
  var imgLink;

  var CurrentUserEmail;
  var CurrentUserName;
  var CurrentUserUid ;
  var userProfileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              // set background image
                image: AssetImage('assets/splash_bg.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // welcome back text مـرحـبا بـعودتـك
                  Text(
                    'مرحبا بعودتك',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'JF Flat',
                      fontSize: 48,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // login to continue تـسجيل الـدخـول لـلمتابـعة
                  Text(
                    'تسجيل الدخول للصتابعة',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'JF Flat'),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.13,
              ),
              // user name text form field اسـم المسـتخدم
              TextFormField(
                controller: emailEditingController,
                style: TextStyle(fontSize: 20,color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'اسم المستخدم',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JF Flat',
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 1.7)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 1.7))),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.009,
              ),
              // password text form field كـلمة السـر
              TextFormField(
                controller: passwordEditingController,
                style: TextStyle(fontSize: 20,color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'كلمة السر',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JF Flat',
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 1.7)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 1.7))),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.08,
              ),
              // Navigate to home page
              GestureDetector(
                onTap: () {
                  _LoginFirebaseUser();
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                // login تـسجيل الـدخـول
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.065,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    // login تـسجيل الـدخـول
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontFamily: 'JF Flat'),
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02,
              ),
              // login with facebook
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.065,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/facebook_ic.png'),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.05,
                    ),
                    Text(
                      'الاســـــتـمـرار مـع فيســــبوك',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'JF Flat'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.06,
              ),
              // Navigate to forget password screen
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FourScreen()));
                },
                // forget password
                child: Text(
                  'هل نسيت كلمة السر؟',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontFamily: 'JF Flat'),
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.12,
              ),
              // Don't have an account لـيس لـديـك حـساب؟ اشـتراك
              Text(
                'ليس لديك حساب ؟ اشتراك',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'JF Flat'),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _LoginFirebaseUser() async {
    print("Login fucntion runs");
    try {
      print("Try block runs");
      userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: emailEditingController.text.toString().trim(),
          password: passwordEditingController.text.toString().trim()).then((
          value) =>
          getdata()
            ());
    } on FirebaseAuthException catch (e) {
      print("Catch block runs");

      if (e.code == 'weak-password') {
        ToastMsg( 'The password provided is too weak',Colors.red,);
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        ToastMsg( 'The account already exists for that email',Colors.red,);
        print('The account already exists for that email.');
      }
    } catch (e) {
      // ToastMsg("$e", Colors.red);
      print(e);
    }
  }

getdata() async {
  var collection = FirebaseFirestore.instance.collection('Users');
  var docSnapshot = await collection.doc(FirebaseAuth.instance.currentUser.uid.toString()).get();
  if (docSnapshot.exists) {
    Map<String, dynamic> data = docSnapshot.data();

     setState(() {
       CurrentUserEmail = data['CurrentUserEmail'];
       CurrentUserName = data['CurrentUserName'];
       CurrentUserUid = data['CurrentUserUid'];
       userProfileImage = data['userProfileImage'];
       writeDataToSharedPref();
     });


  }
}


  Future<void> writeDataToSharedPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userProfileImage', userProfileImage);
    prefs.setString('CurrentUserName',CurrentUserName);
    prefs.setString(
      'CurrentUserEmail', CurrentUserEmail,);
    prefs.setString('CurrentUserUid', FirebaseAuth.instance.currentUser.uid,);
    print("3333333333333333333333");

    print(
        '&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff%%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()));
  }
}

