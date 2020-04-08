import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
            Text(question[questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () {
                print('answer 2 choosen');
              },
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () => print('answer 1 choosen'),
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
