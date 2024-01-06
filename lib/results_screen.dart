import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});
  final void Function() onRestart;
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answered X out of Y questions correctly!"),
            const SizedBox(
              height: 30,
            ),
            const Text('List of Questions and Answers'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: onRestart,
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
