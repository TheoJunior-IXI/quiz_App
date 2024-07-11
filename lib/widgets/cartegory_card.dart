
import 'package:flutter/material.dart';
import 'package:task_4/screens/quiz_screen.dart';

class CartegoryCard extends StatelessWidget{
  final String quizName;
  final Color quizColor;
  const CartegoryCard({
    required this.quizName,
    required this.quizColor,
    super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>  QuizScreen(),
          ),
        );
      },
      child: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height * 1 / 3,
          width: MediaQuery.of(context).size.width, 
          color: quizColor,
          child: Center(
            child: Text(
              quizName, style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

}