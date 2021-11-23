import 'package:afari/googleSignInScreens/provider/google_sign_in.dart';
import 'package:afari/googleSignInScreens/widget/sign_up_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'one.dart';

class Shaksi extends StatefulWidget {


  @override
  _ShaksiState createState() => _ShaksiState();
}

class _ShaksiState extends State<Shaksi> {
  final user = FirebaseAuth.instance.currentUser;
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  var userProfileImage ;
  var userName;
  var userEmail;
  var userId;


  bool switchControl = false;
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserDataFromSp();


  }

  Future<void> getUserDataFromSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SP HOMEPAGE %%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));
    setState(() {
      userProfileImage = prefs.getString('userProfileImage');
      userName = prefs.getString('CurrentUserName');
      userEmail = prefs.getString('CurrentUserEmail');
      userId = prefs.getString('CurrentUserUid');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "الملف الشخصي",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  userName,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  userEmail??"Phone No",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1),
                            CircleAvatar(
                              radius: 34,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage:
                                    NetworkImage(userProfileImage),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الدفع  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/card_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "رصيد المحفظة  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/wallet_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "تقييم المندوب  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/car_ic.png')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width:
                                        MediaQuery.of(context).size.width * 0.15,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(35)),
                                    child: Transform.scale(
                                        scale: 1.85,
                                        child: Switch(
                                          onChanged: toggleSwitch,
                                          value: switchControl,
                                          activeColor: Colors.blue[200],
                                          activeTrackColor: Colors.blue,
                                          inactiveThumbColor: Colors.red,
                                          inactiveTrackColor: Colors.white,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الاشعارات   ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/notifications_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "اللغة  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Image.asset('assets/globe_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "دعوة الاصدقاء   ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/friends_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الدعم   ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Image.asset('assets/bag_ic.png')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios, color: Colors.red),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 23),
                                child: Row(
                                  children: [
                                    Text(
                                      "تسجيل  ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'JF Flat'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "تيلجرام ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'JF Flat'
                                ),
                              ),
                              Image.asset('assets/telegram_ic.png')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // height:MediaQuery.of(context).size.height *0.1,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          GestureDetector(
                            onTap: () async {
                                await facebookSignIn.logOut();
                              FirebaseAuth.instance.signOut();
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                  OneScreen()), (Route<dynamic> route) => false);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "تسجيل الخروج  ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'JF Flat'
                                  ),
                                ),
                                Image.asset('assets/logout_ic.png')
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
