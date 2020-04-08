import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('answer choosen');
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
            Text('what is your name?'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
