import 'package:flutter/material.dart';

import '../data/question.dart';
class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.optionText, required this.onTapped});

  final String optionText;
  final void Function() onTapped;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapped,
      child: Text(
        optionText
        // questions[0].answer[0],
      ),
    );
    SizedBox(
    height: 15,
    );
  }
}
