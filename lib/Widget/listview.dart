import 'package:afari/Screens/eight.dart';
import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EightScreen()));
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ماكدونادز",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'JF Flat',
                        color: Colors.grey),
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/distance_ic.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'كم',
                                  style: TextStyle(color: Colors.grey.shade600,fontFamily: 'JF Flat'),
                                ),
                                Text(
                                  '10.6',
                                  style: TextStyle(color: Colors.grey.shade600),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/rating_ic.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Text("4.5"),
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
                    // color: Colors.black,
                    // image: DecorationImage(
                      
                        // image: AssetImage('assets/mcdonalds_thumb@3x.png'),), 
                        ),
                child: Image.asset('assets/mcdonalds_thumb@3x.png',fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
