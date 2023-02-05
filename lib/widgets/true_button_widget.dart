import 'package:flutter/material.dart';

class TrueButton extends StatefulWidget {
  const TrueButton({Key? key}) : super(key: key);

  @override
  State<TrueButton> createState() => _TrueButtonState();
}

class _TrueButtonState extends State<TrueButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green)),
            onPressed: () {},
            child: const Text(
              'True',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
      ),
    );
  }
}
