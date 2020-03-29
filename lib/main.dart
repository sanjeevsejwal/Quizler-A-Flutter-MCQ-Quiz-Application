import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(Quizler());

class Quizler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizler'),
        ),
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                if (quizBrain.isFinished() == true) {
                  Alert(
                    context: context,
                    title: 'Finished!',
                    desc: 'You\'ve reached the end of the quiz.',
                  ).show();
                  quizBrain.reset();
                  scoreKeeper = [];
                } else if (quizBrain.getAnswerText() ==
                    quizBrain.getAnswerA()) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  );
                }

                setState(
                  () {
                    quizBrain.nextQuestion();
                  },
                );
              },
              child: Text(
                quizBrain.getAnswerA(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                if (quizBrain.isFinished() == true) {
                  Alert(
                    context: context,
                    title: 'Finished!',
                    desc: 'You\'ve reached the end of the quiz.',
                  ).show();
                  quizBrain.reset();
                  scoreKeeper = [];
                } else if (quizBrain.getAnswerText() ==
                    quizBrain.getAnswerB()) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  );
                }

                setState(() {
                  quizBrain.nextQuestion();
                });
              },
              child: Text(
                quizBrain.getAnswerB(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                if (quizBrain.isFinished() == true) {
                  Alert(
                    context: context,
                    title: 'Finished!',
                    desc: 'You\'ve reached the end of the quiz.',
                  ).show();
                  quizBrain.reset();
                  scoreKeeper = [];
                } else if (quizBrain.getAnswerText() ==
                    quizBrain.getAnswerC()) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  );
                }

                setState(() {
                  quizBrain.nextQuestion();
                });
              },
              child: Text(
                quizBrain.getAnswerC(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                if (quizBrain.isFinished() == true) {
                  Alert(
                    context: context,
                    title: 'Finished!',
                    desc: 'QUIZ Ends Here!',
                  ).show();
                  quizBrain.reset();
                  scoreKeeper = [];
                } else if (quizBrain.getAnswerText() ==
                    quizBrain.getAnswerD()) {
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  );
                }

                setState(() {
                  quizBrain.nextQuestion();
                });
              },
              child: Text(
                quizBrain.getAnswerD(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
