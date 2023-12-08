import 'package:flutter/material.dart';
// Color maincolor=Color(0xFF252C42);

class Container1 extends StatelessWidget {
  var cardchild;
  var colour;
  Container1({this.cardchild,this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
