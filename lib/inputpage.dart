

import 'package:bmi_calculator/calculation.dart';
import 'package:bmi_calculator/output.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inputpage extends StatefulWidget {
  @override
  InputpageState createState() => InputpageState();
}

class InputpageState extends State<Inputpage> {

  int weight= 20;
  int age =10;
  int height =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF103145),
      appBar: AppBar(
        backgroundColor: Color(0xFF103145),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
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

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF296387),
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
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF296387) ,
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
                                 height++;
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
                                 height--;
                               });
                             }
                         ),
                       ],
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
                      color: Color(0xFF296387),
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
                      color: Color(0xFF296387),
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
             color: Colors.pinkAccent,
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
               ),
               )
           )
          ],
        ),
      ),
    );
  }
}
