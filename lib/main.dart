import 'package:flutter/material.dart';
import './Quest.dart';
import './answer.dart';
import 'package:restart_app/restart_web.dart';
import 'package:restart_app/restart_app.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final Q2 = [
    {
      'Question': 'PLAY',
      'answers': [
        'learning mode ',
        'build mode ',
        'endless mode ',
        'level mode '
      ]
    },
  ];
  var _QuestionIndex = 0;
  void _resetapp() {
    setState(() {});
    _QuestionIndex = 0;
  }

  void _answerQuestion() {
    setState(() {
      _QuestionIndex += 1;
    });
    print('answered');
    print(Q2.length);
  }

  @override
  Widget build(BuildContext context) {
    var modes = ['learning mode ', 'build mode', 'endless mode', 'level mode'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'projet D',
        theme: ThemeData(fontFamily: 'Digital7'),
        home: Scaffold(
            appBar: null,
            body: _QuestionIndex < 1
                ? Container(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        image: DecorationImage(
                      image: AssetImage('assets/images/back.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios_new_sharp,
                                        size: 50,
                                      ),
                                      color: Color(int.parse('0xff937047')),
                                      onPressed: _resetapp,
                                    ),
                                  ),
                                  Quest(
                                      Q2[_QuestionIndex]['Question'] as String),
                                  ...(Q2[_QuestionIndex]['answers']
                                          as List<String>)
                                      .map((answer) {
                                    return Answer(_answerQuestion, answer);
                                  }).toList(),
                                ],
                              )
                            ],
                          ),
                        ])
                    )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/images/cont.png',
                        width: 500,
                        height: 500,
                      )),
                      Center(
                          child: ElevatedButton(
                              onPressed: _resetapp, child: Text('return')))
                    ],
                  )));
  }
}
