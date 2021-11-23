import 'package:flutter/material.dart';

class FiveScreen extends StatefulWidget {
  // const FiveScreen({Key? /ey}) : super(key: key);

  @override
  _FiveScreenState createState() => _FiveScreenState();
}

class _FiveScreenState extends State<FiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0.0,
      backgroundColor: Colors.white.withOpacity(0.9),
      leading: GestureDetector(
        // close or pop screen
        onTap: (){
          Navigator.pop(context);
        },
        // set back arrow icon
        child: Icon(Icons.arrow_back_ios, color: Colors.red,)),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  // verify phone number الـتحقق مـن رقـم الـهاتـف
                  child: Text(
                    'الـتحقق مـن رقـم الـهاتـف',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 39,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            // Enter the code sent to your phone الدخل الكود المرسل الى هاتفك
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'الدخل الكود المرسل الى هاتفك',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.058,
            ),
            // OTP container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //1 
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ),
                // 2
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ), 
                // 3
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ),
                // 4
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            // confirmation orتـأكـيد 
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تـأكـيد',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  primary: Colors.white,
                  onPrimary: Colors.red,
                  // foregroundColor: MaterialStateProperty.all(Colors.red),
                  // backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
