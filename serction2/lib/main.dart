import 'package:flutter/material.dart';

import './question.dart';

// void main(){
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

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
   
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s your name',
      'what\'s your favourite color',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FIrst App'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]
              ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () {
                print('answer 2 choosen');
              },
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () => print('answer 3 choosen'),
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
