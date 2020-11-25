import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'library.dart';

void main() {
  runApp(QuizApp());
}

QuestionBank bank = new QuestionBank();

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeeper = [];
  int questionNb = 0;

  void _checkAnswer(bool userAnswer) {
    bool correctAnswer = bank.getCurrentAnswer();
    setState(() {
      if (!bank.isFinished()) {
        if (userAnswer == correctAnswer) {
          scoreKeeper.add(Icon(Icons.check, color: Colors.green));
        } else {
          scoreKeeper.add(Icon(Icons.clear, color: Colors.red));
        }
        bank.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    bank.getCurrentQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      'TRUE',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _checkAnswer(true);
                    }),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text(
                      'FALSE',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _checkAnswer(false);
                    }),
              ),
            ),
            Row(
              children: scoreKeeper,
            ),
          ],
        ),
      ),
    );
  }
}
