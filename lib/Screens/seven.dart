import 'package:afari/Widget/listview.dart';
import 'package:flutter/material.dart';

class SevenScreen extends StatefulWidget {
  @override
  _SevenScreenState createState() => _SevenScreenState();
}

class _SevenScreenState extends State<SevenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Text(
                      "المطاعم",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontFamily: 'JF Flat'
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   // color: Colors.orange,
              // ),
              child: Image.asset(
                'assets/header@3x.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ListViewContainer();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
