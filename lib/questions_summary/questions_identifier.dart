import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    // return CircleAvatar(
    //   radius: 15,
    //   backgroundColor: isCorrectAnswer
    //       ? const Color.fromARGB(180, 88, 180, 255)
    //       : const Color.fromARGB(180, 255, 88, 88),
    //   child: Text(
    //     (questionIndex + 1).toString(),
    //     style: const TextStyle(
    //       fontSize: 14,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (questionIndex + 1).toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
