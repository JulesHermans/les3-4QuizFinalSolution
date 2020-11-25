import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

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
  List<String> questions = [
    'Sommige katten zijn allergisch voor mensen',
    'kan een koe een trap naar beneden laten nemen, maar niet naar boven',
    'Een kwart van de menselijke botten bevinden zich in de voet',
  ];
  int questionNb = 0;

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
                    questions[questionNb],
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
                      setState(() {
                        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                        if (questionNb < questions.length - 1) {
                          questionNb++;
                        } else {
                          questionNb = 0;
                        }
                      });
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
                      setState(() {
                        scoreKeeper.add(Icon(Icons.clear, color: Colors.red));
                        if (questionNb < questions.length - 1) {
                          questionNb++;
                        } else {
                          questionNb = 0;
                        }
                      });
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
