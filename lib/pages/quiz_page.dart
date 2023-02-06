import 'package:flutter/material.dart';

import '../data/question_data.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<Widget> answersIcons;

  final data = QuestionsData.getQuestions();
  int questionNumber = 0;

  @override
  void initState() {
    super.initState();
    answersIcons = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              questionText(),
              _answerButton('True', 1, true),
              _answerButton('False', 2, false),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: answersIcons,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _answerButton(String text, int choice, bool answer) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: (choice == 1)
                    ? const MaterialStatePropertyAll(Colors.green)
                    : const MaterialStatePropertyAll(Colors.red)),
            onPressed: () {
              setState(() {
                if (answer == true) {
                  bool correctAnswer = data[questionNumber].answer;
                  if (correctAnswer == true) {
                    debugPrint('You are right!');
                  } else {
                    debugPrint('You are Wrong!');
                  }
                } else {
                  bool correctAnswer = data[questionNumber].answer;
                  if (correctAnswer == false) {
                    debugPrint('You are right!');
                  } else {
                    debugPrint('You are Wrong!');
                  }
                }

                questionNumber < data.length - 1 ? questionNumber++ : null;
                (choice == 1 )
                    ? answersIcons.add(const Icon(
                        Icons.check,
                        size: 24,
                        color: Colors.green,
                      ))
                    : answersIcons.add(const Icon(
                        Icons.face,
                        color: Colors.red,
                        size: 24,
                      ));
              });
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )),
      ),
    );
  }

  Widget questionText() {
    return Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              data[questionNumber].question,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ));
  }
}
