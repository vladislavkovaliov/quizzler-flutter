class Question {
  String questionText = '';
  bool questionAnswer = false;

  Question({
    String questionText,
    bool questionAnswer,
  }) {
    this.questionAnswer = questionAnswer;
    this.questionText = questionText;
  }

  isCorrectAnswer(bool actualAnswer) {
    return this.questionAnswer == actualAnswer;
  }
}
