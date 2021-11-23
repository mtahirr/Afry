import 'dart:math';

import 'package:flutter/material.dart';

class BottomMenuContainer extends StatefulWidget {
  @override
  _BottomMenuContainerState createState() => _BottomMenuContainerState();
}

class _BottomMenuContainerState extends State<BottomMenuContainer> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _ButtonPressed();
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
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
                                fontSize: 20,
                                color: Colors.grey,
                                fontFamily: 'JF Flat'
                              ),
                            ),
                            Text(
                              "  21",
                              style: TextStyle(
                                fontSize: 20,
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
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
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
          return StatefulBuilder(
          builder: (BuildContext context, setState) {
           return   Container(
            height: MediaQuery.of(context).size.height * 0.88,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.cancel),
                      Text(
                        "كرسبي تشيكن",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/burger1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                   elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
                                  child: Container(
                     height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width *0.95,
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                                
                            ],),
                            Row(
                              children: [
                                 Text(
                                  " كول  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey,
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
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white),
                                    child: _value
                                        ? Icon(Icons.check_box_outline_blank, size: 30.0, color: Colors.white)
                                        : Icon(
                                            Icons.check,
                                            size: 30.0,
                                            color: Colors.blue,
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
                Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "اضافة",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
              ],
            ),
           ) ;
          }
          
         );
        
        });
  }
}
