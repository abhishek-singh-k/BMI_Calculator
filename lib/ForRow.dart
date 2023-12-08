import 'package:flutter/material.dart';
import 'input_page.dart';
class NewWidgets extends StatefulWidget {
int? rowtype;
  NewWidgets({this.rowtype});

  State<NewWidgets> createState() => _NewWidgetsState();
}


class _NewWidgetsState extends State<NewWidgets> {
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [FloatingActionButton(
          backgroundColor: Color(0xFF4C4F5C),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (){
            setState(() {

               if(widget.rowtype==1)
                 {
                   print("hello");
                   Weight++;
                   print(Weight);
                 }
               else
                 {age++;
                   print(age);
                 }

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

              {
                if(widget.rowtype==0)
                {
                  age--;
                  print(age);
                }
                else
                {Weight--;
                  print(Weight);
                }
              }
              });
            }
        ),

      ],
    );
  }
}
