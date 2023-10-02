import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
  });

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("some question"),
          SizedBox(
            height: 20,
          ),
          AnswerButton("answer 1", () {}),
          AnswerButton("answer 2", () {}),
          AnswerButton("answer 3", () {}),
          AnswerButton("answer 4", () {}),
        ],
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    this.answer,
    this.onTap, {
    super.key,
  });
  final String answer;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            answer,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
