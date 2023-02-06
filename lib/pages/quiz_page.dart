import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../data/question_data.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<Widget> answersIcons;

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
              QuestionsData.nextQuestion();

              setState(() {
                if (QuestionsData.isFinished() == true) {
                  QuestionsData.reset();

                  Alert(context: context, title: "Finish", desc: "Game is over")
                      .show();
                  QuestionsData.reset();
                  answersIcons.clear();
                } else {
                  if (answer == true && QuestionsData.getAnswer()) {
                    answersIcons.add(const Icon(
                      Icons.check,
                      size: 24,
                      color: Colors.green,
                    ));
                  } else {
                    answersIcons.add(
                        const Icon(Icons.close, size: 24, color: Colors.red));
                  }
                }
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
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: Colors.white38,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Card(
              elevation: 10,
              color: Colors.white38,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    QuestionsData.getQuestionText(),
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void checkUserAnswer() {}
}
