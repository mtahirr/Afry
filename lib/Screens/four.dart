import 'package:afari/Screens/five.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatefulWidget {
  // const FourScreen({ Key? key }) : super(key: key);

  @override
  _FourScreenState createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // close screen or pop screen
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          // set back arrow icon
          child: Icon(Icons.arrow_back_ios_new, color: Colors.red,),
        ),
      ),
      // body
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.054,
            ),
            // forget password هـل نسـيت كـلمة السـر
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('هـل نسـيت كـلمة السـر', style: TextStyle(color: Colors.black, fontSize: 31),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.7,
                  child: Text('أدخل رقم هاتفك أدناه وسنرسل إليك رسالة نصية تحتوي على رمزالتحقق لتغييركلمة المرورالخاصة بك',
                   style: TextStyle(color: Colors.black, fontSize: 18), textAlign: TextAlign.right,)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.044,
            ),
            // phone number text form field رقـم الـهاتـف
            TextFormField(
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: 'رقـم الـهاتـف',
            )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                // Navigate to OTP srceen
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FiveScreen()));
                }, 
                // send button إرسـال
                child: Text('إرسـال', style: TextStyle(fontSize: 15),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  onPrimary: Colors.red,
                  primary: Colors.white,
                  
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}