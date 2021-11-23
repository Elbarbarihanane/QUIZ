import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answered;
  final String answer;
  Answer(this.answered, this.answer);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: answered,
        child: Text(
          answer,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
