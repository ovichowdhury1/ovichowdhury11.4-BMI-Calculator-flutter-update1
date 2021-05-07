import 'package:bmi_calculator/inputpage.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class Outputpage extends StatefulWidget {
  Outputpage({this.bmiresult,this.feedback,this.suggestion});
  String bmiresult;
  String feedback;
  String suggestion;
  @override
  _OutputpageState createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {

  //  customLauncher(command) async{
  //   if(await canLaunch(command)){
  //     launch(command);
  //   }
  //   else{
  //     print("fail to launch");
  //   }
  //
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),

      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text("BMI Calculator",
            style:TextStyle(
              fontSize: 25,
            ) ,
          ),
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text("Your Result",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white ,
              fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFF1D1E33),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 30),
                  child: Text(widget.feedback,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text(widget.bmiresult,
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Text(widget.suggestion,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),


          SizedBox(height: 20,),
          FlatButton(
                   minWidth: double.infinity,
                   height: 70,
              color: Colors.pinkAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Inputpage()));
              },
              child: Text("Re-Calculate",
                style: TextStyle(
                  fontSize: 40,
                  color:Colors.white ,
                ),
              )
          ),
          SizedBox(height: 30,),

          Container(
            height: 70,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.pinkAccent,
              onPressed: _launchURL,
              child: Text('Show BMI Webpage',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://en.wikipedia.org/wiki/Body_mass_index';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}