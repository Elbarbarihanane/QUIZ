import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answered;
  final int indexquestion;
  Quiz(this.questions, this.answered, this.indexquestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indexquestion]["Question"] as String),
        ...(questions[indexquestion]["Answers"] as List).map((answer) =>
            Answer(() => answered(answer["Score"] as int), answer["Answer"]))
      ],
    );
  }
}
