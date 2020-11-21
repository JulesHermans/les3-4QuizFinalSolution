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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'the Questions of the quiz should display here later!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                    child: Text(
                      'TRUE',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      print('True clicked! ');
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
                      print('False clicked! ');
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
