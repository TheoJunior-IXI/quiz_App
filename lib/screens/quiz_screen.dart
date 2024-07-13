
import 'package:flutter/material.dart';
import 'package:task_4/data/quiz_app_data.dart';
import 'package:task_4/screens/Score_screen.dart';

class QuizScreen extends StatefulWidget{ 

  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _questionIndex = 0;
   int _totalScore = 0;
     Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the quiz?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xff051024),
        title:  Text(
        'questions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body:
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            Text(
                  "Questions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
             Text( iqQuestions[_questionIndex]['question'], style: TextStyle(
              color:  Color(0xff092254))),
               SizedBox(height: 15,),
            for (int i = 0; i < (iqQuestions[_questionIndex]['answers']as List).length; i++)
              ElevatedButton(
                onPressed: (){
                   _totalScore +=iqQuestions[_questionIndex]['answers']
                          [i]['score'] as int;
                    if (_questionIndex < (iqQuestions.length - 1)) {
                        setState(() {
                          _questionIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreScreen(
                               totalscore: _totalScore,
                               numberofquestion: iqQuestions.length,
                            ),
                          ),
                        );
                      }      
              },
               child: Text(
                iqQuestions[_questionIndex]['answers'][i]['ans']
               ))
          ],
        ),
      ),
    );
  }
}