import 'package:bmi_calculator/inputpage.dart';
import "package:flutter/material.dart";

class Outputpage extends StatefulWidget {
  Outputpage({this.bmiresult,this.feedback,this.suggestion});
  String bmiresult;
  String feedback;
  String suggestion;
  @override
  _OutputpageState createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF103145),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30),
            child: Text("Your Result",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white ,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           SizedBox(height: 30,),
          Center(
            child: Column(
              children: [
                Text(widget.feedback,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.bmiresult,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white ,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(widget.suggestion,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 320,),
                FlatButton(
                    color: Colors.pinkAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Inputpage()));
                    },
                    child: Text("Re-Calculate",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

