import 'dart:developer';

import 'package:afari/Screens/eleven.dart';
import 'package:afari/Widget/bottomsheetmenuc.dart';
import 'package:flutter/material.dart';

class BurderkingList extends StatefulWidget {
  @override
  _BurderkingListState createState() => _BurderkingListState();
}

class _BurderkingListState extends State<BurderkingList> {
  int counter = 1;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>_ButtonPressed));
          _ButtonPressed();
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "برغر لحم",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'JF Flat',
                        color: Colors.black),
                  ),
                  Text(
                    "برغر لحم",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'JF Flat'
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ريال",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "  21",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/burger_thumb1.png'),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _ButtonPressed() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context, setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.88,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/close_ic.png')),
                        Text(
                          "كرسبي تشيكن",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'JF Flat',
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.black.withAlpha(70),
                              offset: const Offset(0, 5),
                              blurRadius: 1.0)
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/burger_header.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " كولا  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " كولا زيرو  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " فانتا  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " سبرايت  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " ماء  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " عصيربرتقال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ريال  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    " عصيرتفاح  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontFamily: 'JF Flat'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          shape: BoxShape.rectangle,
                                          color: Colors.white),
                                      child: _value
                                          ? Icon(Icons.check_box_outline_blank,
                                              size: 30.0, color: Colors.white)
                                          : Icon(
                                              Icons.check,
                                              size: 30.0,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.black45,
                    // width: MediaQuery.of(context).size.width * 0.3,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Container(
                            // width: MediaQuery.of(context).size .width * 0.055,
                            // height: MediaQuery.of(context).size .height *0.03,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black45)),
                            child: Icon(Icons.add,
                                size: 20, color: Colors.black45),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.035,
                        ),
                        Text(
                          counter.toString(),
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.035,
                        ),
                        InkWell(
                          onTap: () {
                            if (counter > 1) {
                              setState(() {
                                counter--;
                              });
                            }
                          },
                          child: Container(
                            // width: MediaQuery.of(context).size .width * 0.055,
                            // height: MediaQuery.of(context).size .height *0.03,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black45)),
                            child: Icon(
                              Icons.remove,
                              size: 20,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ElevenScreen()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        // height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF94141),
                        ),
                        child: Center(
                          child: Text(
                            "اضافة",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'JF Flat'
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
