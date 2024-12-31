// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:c9_quizzler/classes/Quiz.dart';
import 'package:c9_quizzler/screens/ScoreScreen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quiz quiz = Quiz();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int score = 0;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userAttemptedAnswer) async {
    if (quiz.isFinised()) {
      bool correctAnswer = quiz.getCorrectAnswer();

      setState(() {
        if (userAttemptedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          score++;
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
      });

      // show alert
      // Alert(
      //         context: context,
      //         title: "Finised!",
      //         desc: "Quiz finised. Your attempted $score questions correctly.")
      //     .show();

      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScoreScreen(
            score: score,
          ),
        ),
      );

      setState(() {
        quiz.reset();
        scoreKeeper = [];
        score = 0;
      });
    } else {
      bool correctAnswer = quiz.getCorrectAnswer();

      setState(() {
        if (userAttemptedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          score++;
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }

        quiz.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    quiz.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  child: Text(
                    "True",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  child: Text(
                    "False",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
