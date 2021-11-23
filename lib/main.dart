import 'package:afari/Screens/one.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AfariApp());
}

void ToastMsg(msg,color)
{
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

class AfariApp extends StatefulWidget {
  // const AfariApp({ Key? key }) : super(key: key);

  @override
  _AfariAppState createState() => _AfariAppState();
}

class _AfariAppState extends State<AfariApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
            //  fontFamily: 'Jf Flat'
      ),
     
      home: OneScreen(),
      // home: MyApp(),
    );
  }
}
