import 'package:afari/Screens/arzoalmadib.dart';
import 'package:afari/Screens/shaksi.dart';
import 'package:flutter/material.dart';

class ElevenScreen extends StatefulWidget {
  // const ElevenScreen({Key? key}) : super(key: key);

  @override
  _ElevenScreenState createState() => _ElevenScreenState();
}

class _ElevenScreenState extends State<ElevenScreen> {
  var pay = false;
  var mada = false;
  var stc_pay = false;
  var kasah = true;
  @override
  Widget build(BuildContext context) {
    int counter =1;
    return Scaffold(
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('المجموع  22 ريال',
                        style: TextStyle(color: Colors.white,fontFamily: 'JF Flat')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'التالي',
              style: TextStyle(color: Colors.red, fontSize: 17,fontFamily: 'JF Flat'),
            ),
          ],
        ),
      ),
      body: Container(
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height*0.3,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.white54,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.006,
                    ),
                    Text(
                      'طلب جديد',
                      style: TextStyle(color: Colors.red,fontFamily: 'JF Flat'),
                    ),
                    Container(
                      // padding: EdgeInsets.only(right: 140, left: 16),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height*0.1,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.035,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                          ),
                          Text(
                            'برغركنق',
                            style: TextStyle(color: Colors.red, fontSize: 20,fontFamily: 'JF Flat'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                      color: Colors.black12,
                    ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height * 0.79,
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'قائمة الطلبات',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black45,fontFamily: 'JF Flat'),
                                  ),
                                ],
                              ),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  // height: MediaQuery.of(context).size.height * 0.17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '22 ريال',
                                            style: TextStyle(
                                                color: Colors.black45,fontFamily: 'JF Flat'),
                                          ),
                                          Text(
                                            'كرسبي تشيكن',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'JF Flat',
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text('دجاج فيلية ـ خس ـ طماطم ـ كولا',
                                              style: TextStyle(
                                                fontFamily: 'JF Flat',
                                                  color: Colors.black45)),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.015,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // width: MediaQuery.of(context).size.width * 0.3,
                                              // color: Colors.blue,
                                              child: Text(
                                                'تعديل',
                                                style: TextStyle(
                                                  
                                                    color: Colors.red,fontFamily: 'JF Flat'),
                                              ),
                                            ),
                                            Container(
                                                // color: Colors.black45,
                                                // width: MediaQuery.of(context).size.width * 0.3,

                                                child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      counter++;
                                                    });
                                                  },
                                                  child: Container(
                                                    // width: MediaQuery.of(context).size .width * 0.055,
                                                    // height: MediaQuery.of(context).size .height *0.03,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black45)),
                                                    child: Icon(Icons.add,
                                                        size: 15,
                                                        color: Colors.black45),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.035,
                                                ),
                                                Text(
                                                  counter.toString(),
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 17),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.035,
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    if(counter > 1){
                                                      setState(() {
                                                        counter--;
                                                      });
                                                    }
                                                  },
                                                  child: Container(
                                                    // width: MediaQuery.of(context).size .width * 0.055,
                                                    // height: MediaQuery.of(context).size .height *0.03,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black45)),
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 15,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height*0.01,
                                            // ),
                                          ],
                                        ),
                                      ),
                                      // sized box below the increment and decrement
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  // height: MediaQuery.of(context).size.height * 0.126,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: TextFormField(
                                    maxLines: 3,
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                        hintText: 'اكتب تفاصيل اضافية',
                                        hintStyle: TextStyle(
                                          fontFamily: 'JF Flat'
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'طريقة الدفع',
                                    style: TextStyle(color: Colors.black45,fontFamily: 'JF Flat'),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      // width: MediaQuery.of(context).size.width*0.4,
                                      // color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset('assets/apply_pay_logo.png'),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01,
                                          ),
                                          
                                          Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              checkColor: Colors.red,
                                              activeColor: Colors.white,
                                              // tristate: true,
                                              value: pay,
                                              onChanged: (value) {
                                                setState(() {
                                                  pay = value;
                                                });
                                              })
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      // width: MediaQuery.of(context).size.width*0.4,
                                      // color: Colors.blue,
                                      child: Row(
                                        children: [
                                          Image.asset('assets/cash_logo.png'),
                                          Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              tristate: true,
                                              value: kasah,
                                              onChanged: (value) {
                                                setState(() {
                                                  kasah = value;
                                                });
                                              })
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.011,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      // width: MediaQuery.of(context).size.width*0.4,
                                      // color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset('assets/mada_logo.png'),
                                          Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              // tristate: true,
                                              value: mada,
                                              onChanged: (value) {
                                                setState(() {
                                                  mada = value;
                                                });
                                              })
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      // width: MediaQuery.of(context).size.width*0.4,
                                      // color: Colors.blue,
                                      child: Row(
                                        children: [
                                          Image.asset('assets/stc_pay_logo.png'),
                                          Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              // tristate: true,
                                              value: stc_pay,
                                              onChanged: (value) {
                                                setState(() {
                                                  stc_pay = value;
                                                });
                                              })
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ArzoAlMadib()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width * 0.34,
                                    // height: MediaQuery.of(context).size.height * 0.05,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'اضف كوبون',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontFamily: 'JF Flat',
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.12),
                        // Container(
                        //   width: MediaQuery.of(context).size.width,
                        //   // height: MediaQuery.of(context).size.height*0.02,
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //         color: Colors.red,
                        //         width: MediaQuery.of(context).size.width,
                        //         //  height: MediaQuery.of(context).size.height*.02,
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.end,
                        //           children: [
                        //             Text('المجموع  22 ريال',
                        //                 style: TextStyle(color: Colors.white,fontFamily: 'JF Flat')),
                        //           ],
                        //         ),
                        //       ),
                        //       SizedBox(
                        //           height: MediaQuery.of(context).size.height *
                        //               0.01),
                        //       Text(
                        //         'التالي',
                        //         style:
                        //             TextStyle(color: Colors.red, fontSize: 17,fontFamily: 'JF Flat'),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
