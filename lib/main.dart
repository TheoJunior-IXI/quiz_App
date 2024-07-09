
import 'package:flutter/material.dart';
import 'package:task_4/screens/home_screen.dart';
import 'package:task_4/screens/login_screen.dart';

void main() {
  runApp( QuizApp());
  
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(Object context) {
   return  MaterialApp(
    title: 'QuizApp',
    home: HomeScreen(),
   );
  }
}



