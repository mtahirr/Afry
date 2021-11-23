import 'package:flutter/material.dart';

class Hafiz extends StatefulWidget {
  @override
  _HafizState createState() => _HafizState();
}

class _HafizState extends State<Hafiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                    size: 20,
                  ),
                  Text(
                    "حفظ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ],
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
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.grey[600],
         
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 80,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.08,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: Icon(Icons.add, color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "محمد",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(width:MediaQuery.of(context).size.width*0.1),
                              Text(
                                "الاسم",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                       Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,color:Colors.red),
                                ],
                              ),
                               
                             Row(
                               children: [
                                 Container(
                                   width: MediaQuery.of(context).size.width *0.2,
                                   child: TextFormField(
                                       obscureText: true,

                                     decoration: InputDecoration(
                                      border: InputBorder.none
                                     ),
                                   ),
                                 ),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.06),
                              Text(
                                "الرمز",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              )
                               ],
                             ),
                             
                            ],
                          ),
                        ),
                      ),
                       Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_ios,color:Colors.red),
                                ],
                              ),
                             
                             Row(
                               children: [
                                 Text(
                                    "+966 979797867",
                                    style: TextStyle(
                                      fontSize: 15,
                                    
                                    ),
                                  ),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.06),
                              Text(
                                "الجوال",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              ),
                               ],
                             ),
                              
                            ],
                          ),
                        ),
                      ),
                       Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                
                                children: [
                                  Icon(Icons.arrow_back_ios,color:Colors.red),
                                ],
                              ),
                              
                             Row(
                               children: [
                                 Text(
                                    "muhammad@example.com",
                                    style: TextStyle(
                                      fontSize: 15,
                                    
                                    ),
                                  ),
                                   SizedBox(width:MediaQuery.of(context).size.width*0.06),
                              Text(
                                "الايميل",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              )
                               ],
                             ),
                             
                            ],
                          ),
                        ),
                      ),
                       Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                
                                children: [
                                  Icon(Icons.arrow_back_ios,color:Colors.red),
                                ],
                              ),
                              
                             Row(
                              
                               children: [
                                 Text(
                                    "oct 24, 1998",
                                    style: TextStyle(
                                      fontSize: 15,
                                    
                                    ),
                                  ),
                                   SizedBox(width:MediaQuery.of(context).size.width*0.06),
                              Text(
                                "تاريخ الميلاد",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[400],
                                ),
                              )
                               ],
                             ),
                             
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
