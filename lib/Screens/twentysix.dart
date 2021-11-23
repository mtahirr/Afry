import 'package:flutter/material.dart';

class TwentySixScreen extends StatelessWidget {
  // const TwentySixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffF94141),
                    ),
                  ),
                  Text(
                    'حفظ',
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Color(0xffc5cde0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                      bottom: 1,
                      right: 8,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.05,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: Image.asset('assets/add_profile_ic.png'),
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Icon(
                            //   Icons.arrow_back_ios,
                            //   color: Colors.red,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        
                        // color: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        // width: MediaQuery.of(context).size.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('محمد', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                             
                            ),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.15,
                            ),
                            Text('الاسم',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        // width: MediaQuery.of(context).size.width * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        // width: MediaQuery.of(context).size.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('محمد', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                             
                            ),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.15,
                            ),
                            Text('الرمز', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.grey,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.1,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.76,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      // width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('+966 567676767', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              
                            ),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.12,
                          ),
                          Text('الجوال', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.1,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width*0.76,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      // width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('mohamad@example.com', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                             
                            ),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.12,
                          ),
                          Text('الايميل', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'JF Flat'
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // color: Colors.blue,
                                            width: MediaQuery.of(context).size.width * 0.1,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      // width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width * 0.76,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Oct 24, 1980', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            
                            ),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.05,
                          ),
                          Text('تاريخ الميلاد', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'JF Flat',
                              fontSize: 16,
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
