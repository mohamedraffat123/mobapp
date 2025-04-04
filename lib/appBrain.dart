import 'question.dart';

class Appbrain {
  int _questionNO = 0;
  List<Question> _question = [
    Question(
      q: 'عدد كواكب في المجموعه الشمسيه هو ثمانيه كواكب',
      a: 'images/image-1.jpg',
      z: true,
    ),
    Question(q: 'القطط هي حيوانات لاحمه', a: 'images/image-2.jpg', z: true),
    Question(
      q: 'الصين موجوده غي القاره الافريقيه',
      a: 'images/image-3.jpg',
      z: false,
    ),
    Question(q: 'الارض مسطجه وليست كرويه', a: 'images/image-4.jpg', z: false),
    Question(
      q: 'باستطاعه الانسان البقاء علي قيد الحياة بدون اكل اللحوم',
      a: 'images/image-5.jpg',
      z: true,
    ),
    Question(
      q: 'الشمس تدور حول الارض  والارض تدور حول القمر',
      a: 'images/image-6.jpg',
      z: false,
    ),
    Question(q: 'الحيوانات لا تشعر بالالم', a: 'images/image-7.jpg', z: false),
  ];
  int length() {
    return _question.length;
  }

  void nextQuestion() {
    if (_questionNO < _question.length - 1) {
      _questionNO++;
    }
  }

  String getQuestionText() {
    return _question[_questionNO].questionText;
  }

  String getQuestionImage() {
    return _question[_questionNO].questionImage;
  }

  bool getQuestionAnswer() {
    return _question[_questionNO].questionAnswer;
  }

  bool isFinished() {
    if (_questionNO >= _question.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNO = 0;
  }
}
