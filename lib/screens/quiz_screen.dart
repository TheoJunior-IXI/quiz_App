
import 'package:flutter/material.dart';
import 'package:task_4/widgets/answer_card.dart';

class QuizScreen extends StatefulWidget{
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List answers = const ['USA', 'Qatar', 'France', 'Egypt'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xff051024),
        title: const Text(
          'Quition',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body:
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('1st Question :', style: TextStyle(
              color: Color(0xff092254),
            ),),
            const Text('What is the last country to host the world cup ?', style: TextStyle(
              color:  Color(0xff092254))),
            for (int i = 0; i < answers.length; i++)
              AnswerCard(
                answer: answers[i],
              ),
          ],
        ),
      ),
    );
  }
}