
import 'package:flutter/material.dart';
import 'package:task_4/screens/Score_screen.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
  });
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF9C86D)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ScoreScreen(),
                ),
              );
            },
            child: Text(
              answer,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}