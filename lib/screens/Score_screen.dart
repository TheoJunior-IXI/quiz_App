
import 'package:flutter/material.dart';
import 'package:task_4/screens/category_screen.dart';
import 'package:task_4/screens/home_screen.dart';

class ScoreScreen extends StatelessWidget {  @override
  Widget build(BuildContext context) {
 
return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Congratulations Halim, you have finished the quiz and your score is :',
            ),
            const Text(
              '14/20',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                           CategoryScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Play Again',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  HomeScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Exit',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}