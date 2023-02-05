import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/widgets/question_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<Widget> answers;

  @override
  void initState() {
    super.initState();
    answers = [];
    setState(() {});
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
              const QuestionWidget(),
              _answerButton('True', 1),
              _answerButton('False', 2),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: answers,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _answerButton(String text, int choice) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: (choice == 1)
                    ? MaterialStatePropertyAll(Colors.green)
                    : MaterialStatePropertyAll(Colors.red)),
            onPressed: () {
              setState(() {
                (choice == 1)
                    ? answers.add(const Icon(
                        Icons.check,
                        size: 24,
                        color: Colors.green,
                      ))
                    : answers.add(const Icon(
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
}
