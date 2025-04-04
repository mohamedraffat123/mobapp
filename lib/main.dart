import 'package:flutter/material.dart';
import 'package:mobapp/question.dart';
import 'appBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Appbrain appbrain = Appbrain();
void main() {
  runApp(const examapp());
}

class examapp extends StatelessWidget {
  const examapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(title: Text('اختبار'), backgroundColor: Colors.blue),
        body: Padding(padding: EdgeInsets.all(20.0), child: Exampage()),
      ),
    );
  }
}

// statfulwedgit is used for dyamaic pages
class Exampage extends StatefulWidget {
  const Exampage({super.key});

  @override
  State<Exampage> createState() => _ExampageState();
}

class _ExampageState extends State<Exampage> {
  void CheckAnswer(bool userAnswer) {
    setState(() {
      if (appbrain.getQuestionAnswer() == userAnswer) {
        correctanswer++;
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.thumb_up, color: Colors.green),
          ),
        );
      } else {
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.thumb_down, color: Colors.red),
          ),
        );
      }
      if (appbrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'انتهى الاختبار',
          desc: 'لقد اجبت علي $correctanswer من ${appbrain.length()}',
          style: AlertStyle(
            titleStyle: TextStyle(color: Colors.blue, fontSize: 30),
            descStyle: TextStyle(color: Colors.black, fontSize: 20),
          ),
          buttons: [
            DialogButton(
              onPressed: () {
                setState(() {
                  appbrain.reset();
                  answerResult = [];
                });
                Navigator.pop(context);
              },
              width: 120,
              child: Text(
                'ابدء من جديد',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ).show();
        appbrain.reset();
        answerResult = [];
        correctanswer = 0;
      } else {
        appbrain.nextQuestion();
      }
    });
  }

  List<Widget> answerResult = [];
  int correctanswer = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerResult),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appbrain.getQuestionImage()),
              SizedBox(height: 20.0),
              Text(
                appbrain.getQuestionText(),
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                CheckAnswer(true);
              },
              child: Text(
                'صح',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                CheckAnswer(false);
              },
              child: Text(
                'خطأ',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
