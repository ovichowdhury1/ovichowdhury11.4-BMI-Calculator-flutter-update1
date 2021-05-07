

import 'dart:ui';
import 'package:bmi_calculator/calculation.dart';
import 'package:bmi_calculator/output.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inactiveCardColour = Color(0xFF111328);
const activeCardColour = Color(0xFF1D1E33);

class Inputpage extends StatefulWidget {
  @override
  InputpageState createState() => InputpageState();
}

class InputpageState extends State<Inputpage> {

  int weight= 20;
  int age =10;
  int height =1;
  Color maleCardColour= inactiveCardColour;
  Color femaleCardColour= inactiveCardColour;
  void updateCardColour(int gender){
    if(gender==1){
      if(maleCardColour==inactiveCardColour){
        maleCardColour= activeCardColour;
        femaleCardColour=inactiveCardColour;
      }
      else{
        maleCardColour=inactiveCardColour;
      }
    }
    if(gender==2){
      if(femaleCardColour==inactiveCardColour){
        femaleCardColour= activeCardColour;
        maleCardColour=inactiveCardColour;
      }
      else{
        femaleCardColour=inactiveCardColour;
      }
    }
  }
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: (){
                           setState(() {
                             updateCardColour(1);
                           });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: maleCardColour,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 200,
                      width: 140,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.male,
                              size: 60,
                                color: Colors.white
                            ),
                            SizedBox(height: 20,),
                            Text("Male",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white ,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColour(2);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: femaleCardColour,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 200,
                      width: 140,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.female,
                                size: 60,
                                color: Colors.white
                            ),
                            SizedBox(height: 20,),
                            Text("Female",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF1D1E33) ,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Height",
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                     ),
                     ),
                     Text(height.toString(),
                       style: TextStyle(
                         fontSize: 40,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),
                     ),


                    Slider(
                    value: height.toDouble(),
                    min: 1,
                    max: 10,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    ),
                   ],
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 140,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                          ),
                          Text(weight.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                   setState(() {
                                     weight++;
                                   });
                                  }
                              ),
                              SizedBox(width: 10,),

                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                     setState(() {
                                       weight--;
                                     });
                                  }
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 140,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(age.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                   setState(() {
                                     age++;
                                   });
                                  }
                              ),
                              SizedBox(width: 10,),
                              IconButton(
                                  color: Color(0xFFa8b4bf),
                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                   setState(() {
                                     age--;
                                   });
                                  }
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

           FlatButton(
             height: 70.0,
             minWidth: double.infinity,
             color: Colors.pink,
               onPressed: () {
               Calculation cal = Calculation(height: height,weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      Outputpage(
                        bmiresult: cal.bmiresult(),
                        feedback: cal.feedback(),
                        suggestion: cal.sugesstion(),
                      )
                  ));
               },
               child: Text("Calculate",
               style: TextStyle(
                 fontSize: 40,
                 color: Colors.white ,
               ),
               )
           )
          ],
        ),
      ),
    );
  }
}
