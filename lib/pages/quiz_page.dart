import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/widgets/question_widget.dart';
import 'package:quiz_app_flutter/widgets/true_button_widget.dart';

import '../widgets/false_button_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [QuestionWidget(), TrueButton(), FalseButton()],
          ),
        ));
  }
}
