import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexquestion = 0;
  int result = 0;
  final List<Map<String, Object>> _questions = [
    {
      "Question": "what's your favorite color?",
      "Answers": [
        {"Answer": "Red", "Score": 20},
        {"Answer": "Green", "Score": 10},
        {"Answer": "Black", "Score": 30},
      ]
    },
    {
      "Question": "what's your favorite animal?",
      "Answers": [
        {"Answer": "CAT", "Score": 20},
        {"Answer": "DOG", "Score": 10},
        {"Answer": "LION", "Score": 30},
      ]
    }
  ];
  void answered(int score) {
    setState(() {
      indexquestion++;
    });

    result += score;
    return;
  }

  void reset() {
    setState(() {
      indexquestion = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Column(
          children: [
            (_questions.length > indexquestion)
                ? Quiz(_questions, answered, indexquestion)
                : Result(result, reset)
          ],
        ),
      ),
    );
  }
}
