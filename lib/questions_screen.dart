import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The question...",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "answer 1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "answer 2",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "answer 3",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "answer 4",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
