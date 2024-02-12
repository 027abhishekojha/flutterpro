import 'package:flutter/material.dart';
import 'package:udemy_3_2/questions_screen.dart';
import 'package:udemy_3_2/widgets/customCardContainer.dart';

import 'data/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // Widget activeScreen = CustomCardContainer(switchScreen);
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //
  //   // activeScreen = CustomCardContainer(switchScreen);
  //   // activeScreen = const QuestionScreen();
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-screen';
      // activeScreen = const QuestionScreen();
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? CustomCardContainer(switchScreen)
    //     : const QuestionScreen();

    Widget screenWidget = CustomCardContainer(switchScreen);
        if (activeScreen == 'Question-screen') {
            screenWidget =  QuestionScreen(
                onSelectAnswer: chooseAnswer,
            );
          // screenWidget = CustomCardContainer(switchScreen);
        }

    return MaterialApp(/**/
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 71, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: const CustomCardContainer(),
          // child: activeScreen,
          // child: activeScreen == 'start-screen'
          //     ? CustomCardContainer(switchScreen)
          //     : const QuestionScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
