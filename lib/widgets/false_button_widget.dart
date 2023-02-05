import 'package:flutter/material.dart';

class FalseButton extends StatefulWidget {
  List<Widget> answers = [];

  FalseButton({Key? key, required this.answers}) : super(key: key);

  @override
  State<FalseButton> createState() => _FalseButtonState();
}

class _FalseButtonState extends State<FalseButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            onPressed: () {
              setState(() {
                widget.answers.add(const Icon(
                  Icons.ac_unit,
                  size: 18,
                  color: Colors.red,
                ));
              });
            },
            child: const Text(
              'False',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
      ),
    );
  }
}
