import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback reset;
  Result(this.result,this.reset);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Final Score: " + result.toString()),
        ElevatedButton(onPressed: reset, child: const Text("RESET"))
      ],
    );
  }
}
