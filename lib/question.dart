class Question {
  late String questionText;
  late String questionImage;
  late bool questionAnswer;
  Question({required String q, required String a, required bool z}) {
    questionText = q;
    questionImage = a;
    questionAnswer = z;
  } // Constructor
}
