import 'package:flutter/material.dart';
import 'package:udemy_3_2/data/question.dart';
import 'question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List <Map<String, Object>> getSummaryData() {
    final List <Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question-index' : i,
        'question' : questions[i].text[i],
        'correct-answer' : questions[i].answer[0],
        'user-answer': chosenAnswer[i]
      });
    }

    return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You answered $numCorrectQuestion out of $numTotalQuestion question correctly"),
          const SizedBox(height: 30,),
          const Text("List of Quiz"),
          QuestionSummary(getSummaryData()),
          const SizedBox(height: 30,),
          TextButton(onPressed: () {},  child: const Text("Restart Quiz"))
        ],
      ),
    );
  }
}
