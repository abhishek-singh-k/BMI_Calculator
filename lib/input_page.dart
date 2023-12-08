import 'package:bmi_calculator/backend.dart';
import 'package:bmi_calculator/second_scrren.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contains_container.dart';
import 'constants.dart';
//const maincolor=Color(0xFF252C42);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}
int age=15;
int value=180;
int Weight=60;


void updatedcolor(int gender){

  if (gender==1) {
    if(malecolor==inactivecardColor){
      malecolor=activecardColor;
      femalecolor=inactivecardColor;
    }
    else{
      malecolor=inactivecardColor;
    }
  }
  else
    if(gender==0)
      {
        if(femalecolor==inactivecardColor)
        {
          femalecolor=activecardColor;
          malecolor=inactivecardColor;
        }
        else{
          femalecolor=inactivecardColor;
        }
      }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181823),
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        backgroundColor: Color(0xFF181823),
        centerTitle: true,
      ),
      body: SafeArea(

          child:Column(
            children: [
              Expanded(child:
              Row(
                  children: [
                    Expanded(
                      child:  GestureDetector(
                        onTap: ()
                      {
                        print("pressed");
                        setState(() {
                          updatedcolor(1);
                        });
                        },
                        child: Container1(
                          colour: malecolor ,
                            cardchild: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(

                                    FontAwesomeIcons.mars,
                                    size: 80.0,
                              color: Color(0xFFD1D7DC),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text("Male",
                                    style: editfont,

                                    ),
                                ],
                              ),
                          ),
                      ),

                    ),


                    Expanded(
                      child:GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            updatedcolor(0);
                          });
                        },
                        child: Container1(
                          colour: femalecolor,
                          cardchild: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                            FontAwesomeIcons.venus,
                                size: 80.0,
                                color: Color(0xFFD1D7DC),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text("Female",
                                style: editfont,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),

              ),
              Expanded(
                child:Row(
                  children: [
                    Expanded(
                      child: Container1(
                        colour: inactivecardColor,
                        cardchild:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Height",
                            style: TextStyle(
                              fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFD1D7DC)
                            ),),
                            buildSizedBox(),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(value.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color(0xFFD1D7DC),
                                  fontWeight: FontWeight.w700,

                                ),
                                ),
                                Text('CM',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                      color: Color(0xFFD1D7DC),
                                  ),
                                ),
                              ],
                            ),
                            Slider(value: value.toDouble(),
                              min:20,
                              max: 220,
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (newvalue){
                              setState(() {
                                 value=newvalue.round();
                                 print(value);
                              });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],),

              ),
              Expanded(child:
              Row(
                  children: [

                    Expanded(
                      child: Container1(
                        colour: inactivecardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight",
                              style: TextStyle(
                                fontSize:25.0,
                                  color: Color(0xFFD1D7DC),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            buildSizedBox(),

                            Text(Weight.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Color(0xFFD1D7DC),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [FloatingActionButton(
    backgroundColor: Color(0xFF4C4F5C),
    child: Icon(
    Icons.add,
    color: Colors.white,
    ),
    onPressed: (){
    setState(() {
      Weight++;
    });
    }
    ),
    SizedBox(
    width: 20.0,
    ),
    FloatingActionButton(
    backgroundColor: Color(0xFF4C4F5C),
    child: Icon(
    Icons.remove,
    color: Colors.white,
    ),
    onPressed: (){
    setState(() {
      Weight--;
    });
    }
    ),

    ],
    ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container1(
                        colour: inactivecardColor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Text("Age",
                              style: TextStyle(
                                fontSize:25.0,
                                color: Color(0xFFD1D7DC),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(age.toString(),
                              style: const TextStyle(
                                fontSize: 50.0,
                                color: Color(0xFFD1D7DC),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   FloatingActionButton(
                                       backgroundColor: Color(0xFF4C4F5C), 
                                       child: Icon(
                                         Icons.add, 
                                         color: Colors.white,
                                       ), 
                                       onPressed: (){
                                         setState(() {
                                           age++;
                                         });
                                       }
                                       ), 
                                   SizedBox(
                                     width: 20.0,
                                   ), 
                                   FloatingActionButton(
                                       backgroundColor: Color(0xFF4C4F5C), 
                                       child: Icon(
                                         Icons.remove, 
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
                  ]),

              ),
                 GestureDetector(
                   onTap:(){
                   //  Navigator.pushNamed(context, 'second',arguments: {Weight,value});
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> second_screen(height2: value,Weight2: Weight,)));


                   },
                   child: Container(

                        color: Colors.pink,
                        margin: EdgeInsets.only(top:10.0),
                        height: 80.0,
                        width: double.infinity,
                     child:const Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                         Text("CALCULATE",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 30.0,
                           color: Colors.white,
                         ),

                       ),
    ]
                     ),
              ),
                 ),

            ],
          ),

      ),

    );
  }



  SizedBox buildSizedBox() {
    return SizedBox(
      height: 10,
    );
  }
}

