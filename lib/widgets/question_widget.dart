import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 5,
        child: Padding (
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              "My Parent Sayed me My feature is not for his hands?",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ));
  }
}
