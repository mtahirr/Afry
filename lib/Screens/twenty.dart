import 'package:afari/Screens/shaksi.dart';
import 'package:afari/Screens/twentysix.dart';
import 'package:flutter/material.dart';

class TwentyScreen extends StatefulWidget {
  // const TwentyScreen({Key? key}) : super(key: key);

  @override
  _TwentyScreenState createState() => _TwentyScreenState();
}

class _TwentyScreenState extends State<TwentyScreen> {
  var pay = false;
  var mada = false;
  var stc_pay = false;
  var kasah = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height * 0.1,
      //   // color: Colors.red,
      //   child: Column(
      //     children: [
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         color: Colors.red,
      //         child: Container(
      //           padding: EdgeInsets.symmetric(horizontal: 10),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               Text('المجموع  22 ريال',
      //                   style: TextStyle(color: Colors.white)),
      //             ],
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * 0.02,
      //       ),
      //       Text(
      //         'التالي',
      //         style: TextStyle(color: Colors.red, fontSize: 17),
      //       ),
      //     ],
      //   ),
      // ),
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
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.31,
                          ),
                          Text(
                            'ارسلها عني',
                            style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'JF Flat'),
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
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    'اكتب طلبك',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    // height: MediaQuery.of(context).size.height * 0.126,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          maxLines: 3,
                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                color: Colors.black45,
                                              ),
                                              hintText:
                                                  'أكتب تفاصيل طلبك مندوبنا',
                                              border: InputBorder.none),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset('assets/camera_ic.png')
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                      ],
                                    )),
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
                                          Image.asset(
                                              'assets/apply_pay_logo.png'),
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
                                              // tristate: true,
                                              activeColor: Colors.white,
                                              checkColor: Colors.red,
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
                                          EdgeInsets.symmetric(horizontal: 9),
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
                                               activeColor: Colors.white,
                                              checkColor: Colors.red,
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
                                          EdgeInsets.symmetric(horizontal: 14),
                                      // width: MediaQuery.of(context).size.width*0.4,
                                      // color: Colors.blue,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/stc_pay_logo.png'),
                                          Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              // tristate: true,
                                               activeColor: Colors.white,
                                              checkColor: Colors.red,
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TwentySixScreen()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 6),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        0.34,
                                    // height: MediaQuery.of(context).size.height * 0.05,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'اضف كوبون',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 17,fontFamily: 'JF Flat'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      // width: MediaQuery.of(context).size.width *0.44,
                                      // height: MediaQuery.of(context).size.height *0.06,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'موقع استلام الشحنة',
                                                style: TextStyle(
                                                    color: Colors.red,fontFamily: 'JF Flat'),
                                              ),
                                              Text(
                                                'الرياض - حي العارض طريق ابو بكر الصديق',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  fontFamily: 'JF Flat'
                                                ),
                                              )
                                            ],
                                          ),
                                          Image.asset('assets/hand_ic.png'),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      // width: MediaQuery.of(context).size.width * 0.44,
                                      // height: MediaQuery.of(context).size.height *0.06,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          // SizedBox(
                                          //   height: MediaQuery.of(context).size.height*0.03,
                                          // ),
                                          Column(
                                            children: [
                                              Text(
                                                'موقع تسليم الشحنة',
                                                style: TextStyle(
                                                    color: Colors.red,fontFamily: 'JF Flat'),
                                              ),
                                              Text(
                                                'الرياض ـ حي الصحافة. شارع انس بن مالك',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  fontFamily: 'JF Flat'
                                                ),
                                              )
                                            ],
                                          ),
                                          Image.asset('assets/map_ic.png'),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      // width: double.infinity,
                                      width: MediaQuery.of(context).size.width *
                                          0.87,
                                      // width: MediaQuery.of(context).size.width*0.85,
                                      // height: MediaQuery.of(context).size.height*0.02,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'وقت التوصيل',
                                                style: TextStyle(
                                                    color: Colors.red,fontFamily: 'JF Flat'),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '١ساعة',style: TextStyle(
                                                      fontFamily: 'JF Flat'
                                                    ),
                                                    textAlign: TextAlign.right,
                                                    
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                          ),
                                          Image.asset('assets/red_clock_ic.png')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Shaksi()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey.shade200,
                            // height: MediaQuery.of(context).size.height*0.02,
                            // color: Colors.red,
                            child: Center(
                                child: Text(
                              'ارسال الطلب',
                              style: TextStyle(color: Colors.red, fontSize: 17,fontFamily: 'JF Flat'),
                            )),
                          ),
                        ),
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
