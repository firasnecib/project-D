import 'package:flutter/material.dart';

class Quest extends StatelessWidget {
  final String question ;
  Quest(this.question);
  @override
  Widget build(BuildContext context) {
   String color = '#937047'.replaceAll('#', '0xff');
    return Container( 
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Text(question,
    style:TextStyle(fontSize: 100,color: Color(int.parse(color))),
    textAlign: TextAlign.center,
    ),
    );
  }
}
