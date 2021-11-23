import 'package:afari/Widget/burgerkinglistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EightScreen extends StatefulWidget {
  @override
  _EightScreenState createState() => _EightScreenState();
}

class _EightScreenState extends State<EightScreen> {
  List<String> datalist = [
    'عروض لمدة محدودة',
    'مشروبات باردة',
    'برغر لحم',
    'برغر دجاج',
    'الوجبات',
    'وجبات الاطفال',
    'عروض لمدة محدودة',
  ];
  Widget scroll(index) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.01,
        margin: const EdgeInsets.all(3.0),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            datalist[index],
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontFamily: 'JF Flat'
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.topRight,
                color: Colors.red,
                child: Text(
                  "المجموع ٢٢ ريال",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'JF Flat'
                  ),
                ),
              ),
              Text(
                "اكمل الطلب",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontFamily: 'JF Flat'
                ),
              ),
            ],
          )),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.orange,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/burger_king_header@3x.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "مشاهدة العروض",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'JF Flat'
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 5),
                                width: MediaQuery.of(context).size.width * 0.42,
                                // height:
                                // MediaQuery.of(context).size.height * 0.1,
                                // padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "الرياض . شارع الملك عبدالعزيز",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 11,
                                            fontFamily: 'JF Flat'
                                          ),
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: 17,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.arrow_back_ios_new_rounded,
                                              color: Colors.red,
                                              size: 12,
                                            ),
                                            Text(
                                              "خرائط",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 13,
                                                fontFamily: 'JF Flat'
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "يبعد: 7.8 كم",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                fontFamily: 'JF Flat'
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  // height:
                                  // MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            color: Colors.red,
                                            size: 12,
                                          ),
                                          Text(
                                            "اراءهم",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontFamily: 'JF Flat'
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "تقييم المستخدمين",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontFamily: 'JF Flat'
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "4.6",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              RatingBar.builder(
                                                initialRating: 3,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                unratedColor: Colors.grey[200],
                                                itemSize: 15,
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            // height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black.withAlpha(70),
                                    offset: const Offset(2.0, 2.0),
                                    blurRadius: 2.0)
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.red,
                                      size: 12,
                                    ),
                                    Text(
                                      "مفتوح",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                        fontFamily: 'JF Flat'
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "اوقات العمل",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontFamily: 'JF Flat'
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Icon(
                                          Icons.timer_rounded,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "ًمن6:00 ص الى 12:00  ",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'JF Flat',
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            // height: MediaQuery.of(context).size.height * 0.03,
                            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "القائمة",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'JF Flat'
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 7,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return scroll(index);
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return BurderkingList();
                            },
                          ),
                        ),
                         SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
