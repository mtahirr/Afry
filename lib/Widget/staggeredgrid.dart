import 'package:afari/Screens/arzoalmadib.dart';
import 'package:afari/Screens/seven.dart';
import 'package:flutter/material.dart';

class StaggeredGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SevenScreen()));
          },
          // set image to background of container
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage(
                    image: AssetImage('assets/category4@2x.png', ),fit: BoxFit.fill),
            ),
          ),
        ),
        // upper of image or stack of image text المطاعم
        Positioned(
          top: 6,
          // left: 95,
          right: 9,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xffF94141),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                "المطاعم",
                style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'JF Flat'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
