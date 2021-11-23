import 'package:afari/Screens/nineteen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ArzoAlMadib extends StatefulWidget {
  @override
  _ArzoAlMadibState createState() => _ArzoAlMadibState();
}

class _ArzoAlMadibState extends State<ArzoAlMadib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Card(
                elevation: 8,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios, color: Color(0xffF94141))),
                            Text(
                              "عروض المناديب",
                              style: TextStyle(
                                color: Color(0xffF94141),
                                fontFamily: 'JF Flat',
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          "( التوصيل )",
                          style: TextStyle(
                            fontFamily: 'JF Flat',
                            color: Color(0xffF94141),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                                      child: Column(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.24,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 22),
                                                // width: MediaQuery.of(context)
                                                        // .size
                                                        // .width *
                                                    // 0.3,
                                                // height: MediaQuery.of(context).size.height *0.04,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Color(0xffF94141),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "قبول",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: 'JF Flat'
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 12),
                                                // width: MediaQuery.of(context).size.width *0.3,
                                                // height: MediaQuery.of(context).size.height *0.04,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Color(0xffF94141),
                                                ),
                                                child: Text(
                                                  "عرض اقل",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'JF Flat',
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("محمد",style:TextStyle(
                                              fontFamily: 'JF Flat'
                                            )),
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
                                                  itemSize: 20,
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
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02),
                                        CircleAvatar(
                                          // backgroundColor: Colors.red,
                                          backgroundImage: AssetImage('assets/profile_thum@2x.png'),
                                          radius: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text("وقت التوصيل",style:TextStyle(
                                              fontFamily: 'JF Flat'
                                            )),
                                        Text(
                                          "ساعة واحدة",
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                              fontFamily: 'JF Flat'
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text("تكلفة التوصيل",),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(text: '15 ', style: TextStyle(
                                                   color: Colors.grey[400],
                                              ),),
                                              TextSpan(
                                                text: 'ريال',
                                                style: TextStyle(
                                                   color: Colors.grey[400],
                                                   fontFamily: 'JF Flat'
                                              ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text("يبعد",style: TextStyle(
                                          fontFamily: 'JF Flat'
                                        ),),
                                        Text(
                                          "5 كم",
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontFamily: 'JF Flat'
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                         Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: InkWell(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> NineteenScreen()));
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.white,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "الغاء الطلب",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontFamily: 'JF Flat',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
