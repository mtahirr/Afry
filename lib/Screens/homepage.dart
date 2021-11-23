import 'package:afari/Screens/shaksi.dart';
import 'package:afari/Widget/staggeredgrid.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


var userProfileImage ;
var userName;
var userEmail;
var userId;


  final user = FirebaseAuth.instance.currentUser;
  int _current = 0;
  // slider images
  List carouselData = [
    "assets/slider1.png",
    "assets/slider1.png",
    "assets/slider1.png",
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              // user account container
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child:
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                        child:
                        CircleAvatar(
                          backgroundImage: NetworkImage(userProfileImage),
                          radius: 19,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Shaksi()));
                      },
                    ),
                    Text(
                      "ماذا تريد ان تشتري",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontFamily: 'JF Flat'
                      ),
                    ),
                    // search container
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        // set search icon
                        backgroundImage: AssetImage('assets/search_ic@2x.png'),
                        backgroundColor: Colors.white,
                        radius: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                child: Swiper(
                  onIndexChanged: (value) {
                    setState(() {
                      _current = value;
                    });
                  },
                  itemCount: carouselData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image(
                      image: AssetImage(carouselData[index]),
                      fit: BoxFit.cover,
                    );
                  },
                  layout: SwiperLayout.DEFAULT,
                ),
              ),
              SizedBox(
                height: 10,
              ),
               // swiper position icon
              Container(
                width: MediaQuery.of(context).size.width * 0.27,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(carouselData, (value, url) {
                    return Container(
                      width: 32.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            _current == value ? Colors.red : Colors.grey[300],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // Stores nearby المتاجر القريبة
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "المتاجر القريبة",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontFamily: 'JF Flat'
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              // shawarmer_thumb
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: Image(
                        image: AssetImage("assets/shawarmer_thumb.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // KFC 
                  Container(
                   padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image(
                      image: AssetImage("assets/kfc_logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Burger king
                  Container(
                    child: Image(
                      image: AssetImage("assets/burger_king_logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // kudo 
                  Container(
                    child: Image(
                      image: AssetImage("assets/kudu_logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // mcdonalds
                  Container(
                    child: Image(
                      image: AssetImage("assets/mcdonalds_logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              // Most requested services الخدمات الاكثر ط ًلب
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الخدمات الاكثر طلباً",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'JF Flat',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              // category logo
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        'assets/category2.png',
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      child: Image.asset(
                        'assets/category1@3x.png',
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                ],
              ),
              // StaggeredGridView
              Expanded(
                child: Container(
                    child: GridView.builder(
                     
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: MediaQuery.of(context).size.height / 800,
                  ),
                  // item length
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return StaggeredGridView();
                  },
                )),
              ),
            ],
          ),),
    );
  }
}
