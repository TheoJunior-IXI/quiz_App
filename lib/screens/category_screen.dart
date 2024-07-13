import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_4/data/quiz_app_data.dart';
import 'package:task_4/models/category_model.dart';
import 'package:task_4/widgets/cartegory_card.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List data = [
    {'name': 'Iq Quiz', 'color': Color(0xff184C86)},
    {'name': 'FootBall Quiz', 'color': Color(0xff092254)},
    {'name': 'E-Sports Quiz', 'color': Color(0xff051024)}
  ];

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Color(0xff092254),
      appBar: AppBar(
        title: Text('category'),
        backgroundColor: Color(0xffF9C86D),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int i = 0; i < data.length; i++)
              CartegoryCard(
                quizName: data[i]['name'],
                quizColor: data[i]['color'],
              ),
          ],
        ),
      ),
    );
  }
}