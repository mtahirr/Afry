import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'homepage.dart';

class SignUpFirebase extends StatefulWidget {
  @override
  _SignUpFirebaseState createState() => _SignUpFirebaseState();
}

class _SignUpFirebaseState extends State<SignUpFirebase> {
  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController birthdayEditingController = TextEditingController();

  UserCredential userCredential;


  bool isLoading = false;
  var imgLink;
  Colors color;
  PickedFile pickedFile;
  File imageFile;
  var selectedDateTime ;
   var _selected = Country.SA;
  //  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        // set background image
          image: DecorationImage(
              image: AssetImage('assets/splash_bg.png'), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Row(
              children: [
                InkWell(
                  // close screen or pop screen
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    // back arrow icon
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // text 'مـرحـ ًبا بـك',
                Text(
                  'مرحبًا بك',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'JF Flat',
                    fontSize: 43,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'التسجيل للصتابعة',
                  style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'JF Flat'),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    _getFromGallery();
                  },
                  child: 
                      pickedFile == null ?
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                          :
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.file(imageFile),
                      )    
                ),
                Positioned(
                    bottom: 1,
                    right: 8,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                          // add new user image icon
                      child: Image.asset('assets/add_profile_ic.png')
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            // country code picker text from field
            TextFormField(
              controller: phoneEditingController,
              style: TextStyle(fontSize: 20,color: Colors.white),
              decoration: InputDecoration(
                  suffixIcon: CountryPicker(
                    showDialingCode: true,
                    showFlag: false,
                    showName: false,
                    dialingCodeTextStyle: TextStyle(color: Colors.white),
                    onChanged: (Country country) {
                      setState(() {
                        _selected = country;
                      });
                    },
                    selectedCountry: _selected,
                  ),
                  hintText: 'رقـم الـهاتـف',
                  hintStyle: TextStyle(color: Colors.white,fontFamily: 'JF Flat',fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7))),
            ),
            // user name text form field
            TextFormField(
              controller: nameEditingController,
              style: TextStyle(fontSize: 25,color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'اسـم المسـتخدم',
                  hintStyle: TextStyle(color: Colors.white,fontFamily: 'JF Flat',fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withOpacity(.9), width: 1.7)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7))),
            ),
            // email text form field
            TextFormField(
              controller: emailEditingController,
              style: TextStyle(fontSize: 20,color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'الايـميل',
                  hintStyle: TextStyle(color: Colors.white,fontFamily: 'JF Flat',fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7))),
            ),
            // password text form field
            TextFormField(
              controller: passwordEditingController,
              style: TextStyle(fontSize: 20,color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'كلمة السر',
                  hintStyle: TextStyle(color: Colors.white,fontFamily: 'JF Flat',fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7))),
            ),
            // date of birth text form field
            TextFormField(
              // initialValue: "1996-03-30",
              controller: birthdayEditingController,
              style: TextStyle(fontSize: 20,color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'تـاريـخ الـميلاد',
                  hintStyle: TextStyle(color: Colors.white,fontFamily: 'JF Flat',fontSize: 16),
                  suffixIcon: InkWell(
                    onTap: (){
                      _showDateTimePicker();
                    },
                    // calender icon
                    child: Image.asset('assets/calendar_ic.png')),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.7))),
           
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    child: Center(
                      // انثى text
                      child: Text(
                        'انثى',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'JF Flat',
                          fontSize: 13
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: (){

                      setState(() {
                        color = Colors.blue as Colors;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Row(
                        children: [
                          // mention text ذكر
                          Text(
                            'ذكر',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'JF Flat',
                              fontSize:13
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            isLoading ?
                CircularProgressIndicator()
            :
            FlatButton(onPressed: (){

              if(nameEditingController.text.isEmpty || emailEditingController.text.isEmpty
                  || phoneEditingController.text.isEmpty
              || passwordEditingController.text.isEmpty
                  || birthdayEditingController.text.isEmpty
              || pickedFile == null ){
                ToastMsg("Please fill All the feilds",Colors.red);
              }
              else
                {
                  print("else run");
                  _registerTestUser();
                }

            }, child:
            Text('SignUp',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    ));
  }
  // date and time picker function
   Future<void> _showDateTimePicker() async {
    final DateTime datePicked = await showRoundedDatePicker(
        context: context,
        initialDate: DateTime(1990, 3),
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2101));

    if (datePicked != null) {
        setState(() {
          // date format
          selectedDateTime =
              "${DateFormat("yyyy-MM-dd").format(datePicked)}";
          print(selectedDateTime);
          print(selectedDateTime);
          print(selectedDateTime);
          print(selectedDateTime);
        });

    }

}

//Image pick
  _getFromGallery() async {
    pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      // maxWidth: 1800,
      // maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        print('imageFile path from image pick $imageFile 22222222222222222222222222222');
      });
    }
  }



  void _registerTestUser() async {
    print("signup fucntion runs");
    try {
      print("Try block runs");
       userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailEditingController.text.toString().trim(),
         password: passwordEditingController.text.toString().trim()).then((value) =>uploadImage(imageFile)
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
      ToastMsg("$e",Colors.red);
      print(e);
    }
  }

  SaveInfoToFireStore() {
    print("save info for firebase runs44444444444444444");
    print(imgLink);
    FirebaseFirestore.instance.collection('Users').doc(FirebaseAuth.instance.currentUser.uid.toString()).set(
        {
          'userProfileImage': imgLink,
          'CurrentUserEmail' : FirebaseAuth.instance.currentUser.email,
          'CurrentUserName' : nameEditingController.text.toString(),
          'CurrentUserUid': FirebaseAuth.instance.currentUser.uid,
        });
    ToastMsg("WelCome Registration Successfull",Colors.blue);
    print("save info for firebase runsss55555555555555555555555555");

    writeDataToSharedPref();
  }


  Future<void> writeDataToSharedPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userProfileImage', imgLink);
    prefs.setString('CurrentUserName', nameEditingController.text.toString(),);
    prefs.setString('CurrentUserEmail', FirebaseAuth.instance.currentUser.email,);
    prefs.setString('CurrentUserUid', FirebaseAuth.instance.currentUser.uid,);
    print("3333333333333333333333");

    print('&&&&&&&&&&&&&&&&&&&&&&&&&&&Data from SHard Predffffff%%%%%%%%%%%%%%%%%%%%%%%5');
    print(prefs.getString('userProfileImage'));
    print(prefs.getString('CurrentUserName'));
    print(prefs.getString('CurrentUserEmail'));
    print(prefs.getString('CurrentUserUid'));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()));


  }


  String downloadUrl;

   uploadImage(var imageFile) async {
    print("image upload method runs11111111111111111");
    var uid = FirebaseAuth.instance.currentUser.uid;
    Reference ref = FirebaseStorage.instance.ref().child("UserImages$uid");
    await ref.putFile(imageFile).then((val) {
      val.ref.getDownloadURL().then((val) {
        print(val);
        downloadUrl = val;
        print("image upload link from image upload method22222222222222222222");

        setState(() {
          imgLink = downloadUrl;
        });
        SaveInfoToFireStore();
      });
    });

    // return downloadUrl;
  }


}
