import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor:
                        data["user_answer"] == data["correct_answer"]
                            ? const Color.fromARGB(180, 88, 180, 255)
                            : const Color.fromARGB(180, 255, 88, 88),
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data["user_answer"] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(183, 224, 189, 231),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          data["correct_answer"] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(222, 54, 123, 242),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
