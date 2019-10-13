import 'package:quizzler/entries/question.dart';

class QuestionFactory {
  List<Question> questions = [
    new Question(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    new Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    new Question(
        questionText: 'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    new Question(
        questionText: 'A slug\'s blood is green.',
        questionAnswer: true),
    new Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    new Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    new Question(
        questionText: 'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    new Question(
        questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    new Question(
        questionText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    new Question(
        questionText: 'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: false),
    new Question(
        questionText: 'Google was originally called \"Backrub\".',
        questionAnswer: false),
    new Question(
        questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: false),
    new Question(
        questionText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: false),
  ];
  int questionIndex = 0;

  String getQuestionText() {
    return this.questions[questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return this.questions[questionIndex].questionAnswer;
  }

  void nextQuestion() {
    if (this.questionIndex < this.questions.length - 1) {
      this.questionIndex++;
    }
  }

  void prevQuestion() {
    if (this.questionIndex >= 0) {
      this.questionIndex--;
    }
  }

  Question getQuestionByIndex(int index) {
    return this.questions[index];
  }

  int length() {
    return this.questions.length;
  }

  String getQuestionTextByIndex(int questionIndex) {
    return this.questions[questionIndex].questionText;
  }

  bool getQuestionAnswerByIndex(int questionIndex) {
    return this.questions[questionIndex].questionAnswer;
  }

  bool isCorrectAnswer(int questionNumber, bool actualAnswer) {
    return this.questions[questionNumber].isCorrectAnswer(actualAnswer);
  }

  bool isFinished() {
    return (this.questions.length - 1) == questionIndex;
  }

  void reset() {
    this.questionIndex = 0;
  }
}