import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); //bentuk sederhana dari constructor

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}