import 'package:flutter/material.dart';

class FalseButton extends StatefulWidget {
  const FalseButton({Key? key}) : super(key: key);

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
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            onPressed: () {},
            child: const Text(
              'False',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
      ),
    );
  }
}
