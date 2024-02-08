import 'package:flutter/material.dart';
import 'package:udemy_3_2/data/question.dart';
import 'package:udemy_3_2/model/quiz_question.dart';
import 'package:udemy_3_2/widgets/answer_button.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});



  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion () {

    setState(() {
    currentQuestionIndex += 1;
    });
  }

  // QuizQuestion currentQuestion = questions[5];
  // QuizQuestion currentQuestion = questions[currentQuestionIndex];
  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
              padding: EdgeInsets.fromLTRB(8, 8, 8, 2),
              child: Text(
                // "Questions ??",
                // questions[0].text,
                currentQuestion.text,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),



            /**Note:- Main Widget is Column and we are passing another list item to a Column list to get rid of this problem
            we simply used Spreader over here which converts the iterable list into a Widget by adding ("...") in front of function name
           */
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(optionText: answer, onTapped: answerQuestion);
            })


            // AnswerButton(optionText:  currentQuestion.answer[0] ,onTapped: () {}),
            // AnswerButton(optionText: currentQuestion.answer[1],onTapped: () {}),
            // AnswerButton(optionText: currentQuestion.answer[2],onTapped: () {}),
            // AnswerButton(optionText: currentQuestion.answer[3],onTapped: () {}),
            // AnswerButton(optionText: currentQuestion.answer[4],onTapped: () {}),

            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text(
            //       // "Answers1"
            //     questions[0].answer[0],
            //   ),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(onPressed: () {}, child: Text(
            //     // "Answers2"
            //   questions[0].answer[1],
            // )),
            // SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(onPressed: () {}, child: Text(
            //     // "Answers3"
            //   questions[0].answer[2],
            // )),
            // SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(onPressed: () {}, child: Text(
            //     // "Answers4"
            //   questions[0].answer[3],
            // )),
            // SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(onPressed: () {}, child: Text(
            //     // "Answers5"
            //   questions[0].answer[4],
            // )),
          ],
        ),
      ),
    );
  }
}



