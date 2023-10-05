import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
    this.chooseAnswer, {
    super.key,
  });
  final void Function(String) chooseAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAnswers().map(
                  (e) => AnswerButton(e, () {
                    goNextQuestion(e);
                  }),
                ),
            // AnswerButton("answer 1", () {}),
            // AnswerButton("answer 2", () {}),
            // AnswerButton("answer 3", () {}),
            // AnswerButton("answer 4", () {}),
          ],
        ),
      ),
    );
  }

  void goNextQuestion(String selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
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
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onTap,
      label: Text(
        answer,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      icon: Icon(Icons.keyboard_arrow_right),
    );
  }
}
