import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData["user_answer"] == itemData["correct_answer"];
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: isCorrectAnswer
                ? const Color.fromARGB(180, 88, 180, 255)
                : const Color.fromARGB(180, 255, 88, 88),
            child: Text(
              ((itemData["question_index"] as int) + 1).toString(),
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
                  itemData["question"] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData["user_answer"] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(183, 224, 189, 231),
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  itemData["correct_answer"] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(222, 54, 123, 242),
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
