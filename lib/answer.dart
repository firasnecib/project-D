import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answer;
  final String answerText;
  Answer(this.answer,this.answerText);
  @override
  Widget build(BuildContext context) {
    String color1 = '#937047'.replaceAll('#', '0xff');
    String color2 = '#241F1C'.replaceAll('#', '0xff');
    return  Container(
      margin: EdgeInsets.only(left: 550,right: 550,top: 10,bottom: 10),
      width: double.infinity,
      child:ButtonTheme(
minWidth: 200.0,
height: 100.0,
child:  RaisedButton(
  hoverColor: Colors.white,
        textColor: Color(int.parse(color2)),
        color: Color(int.parse(color1)),
        child:  Row(mainAxisAlignment: MainAxisAlignment.center ,children: [ Icon(Icons.games, size: 30,),Text(answerText,style: TextStyle(fontSize: 30.0),),], ) ,
        onPressed: answer,
      ),


      )
    );
  }
}
