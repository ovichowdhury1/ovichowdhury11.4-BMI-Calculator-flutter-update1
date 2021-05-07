import 'package:bmi_calculator/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new Inputpage(),
        title: new Text('BMI',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 70.0
          ),),
        // image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Color(0xFF0A0E21),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}
