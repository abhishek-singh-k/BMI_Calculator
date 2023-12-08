import 'package:bmi_calculator/backend.dart';
import 'package:flutter/material.dart';



class second_screen extends StatelessWidget {
  int? height2;
  int? Weight2;
  double bmi2=0.0;
  second_screen(
  {
    this.height2,
    this.Weight2,
    
    
}
      );
  
    void getbmi(double bmi2)
    {
     this.bmi2;

    }



  @override
  Widget build(BuildContext context) {
    checkData();
    return  Scaffold(
        backgroundColor: Color(0xFF131226),
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI CALCULATOR ",
          style: TextStyle(
              fontSize: 20.0,
          ),),
          backgroundColor: Color(0xFF131226),
        ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text("Your Result",
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),),
            ),


         Container(
           // alignment: Alignment.center,
           margin: EdgeInsets.only(top:20.0,right: 20.0,bottom: 20.0, left: 20.0),
           color: Color(0xFF252C42),
           height: 450.0,
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Text(finalData,
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30.0,
                 color: Colors.green,
                 fontWeight: FontWeight.bold
               ),),
               Text(calculateBrain().calculation(weigth1: Weight2,height1: height2),
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 90.0,
                   color: Colors.white,
                   fontWeight: FontWeight.w700,
                 ),
               ),
               Text(finl2,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 30.0,
                   color: Colors.white,
                   fontWeight: FontWeight.w700,
                 ),
               )
             ],
           ),
            ),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'first');
            },
            child: Container(
              margin: EdgeInsets.only(top: 50.0),
              height:75.0,
              padding: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              child: Text("RE-CALCULATE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,

              ),),
              color: Colors.pink,
            ),
          )
        ],
        ),
      );

  }
  var finalData = "";
    var finl2 = "";
    checkData(){
    var  dataObj = calculateBrain().calculation(weigth1: Weight2,height1: height2);
    finalData =   calculateBrain().getresult(double.parse(dataObj)).toString();
    finl2 =   calculateBrain().getadvise(double.parse(dataObj)).toString();

    }
}

// Container(
// color: Color(0xFF252C42),
// child: Column(
// children: [
// Text("overweight",
// style: TextStyle(
// color: Colors.green,
//
// )),
// ],
// ),