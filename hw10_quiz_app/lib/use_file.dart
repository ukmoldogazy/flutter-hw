import 'package:hw10_quiz_app/model.dart';

class UseQuiz {
  int index = 0;
  List<QuizModel> questionAnswer = [
    QuizModel(question: 'Are there 7 region in KG?', answer: true),
    QuizModel(question: 'Is Sulayman-Too located in JA?', answer: false),
    QuizModel(question: 'Is Monkey climbe to the tree?', answer: true),
    QuizModel(question: 'Is there Google Office in Kyrgyzstan', answer: false),
    QuizModel(question: 'Does the Fish live in water?', answer: true),
    QuizModel(question: 'Are u a FrontEnd Developer?', answer: false),
  ];

  String getQuestion() {
    return questionAnswer[index].question;
  }

  bool getAnswer() {
    return questionAnswer[index].answer;
  }

  void nextQuestion() {
    if (index <= questionAnswer.length) {
      index++;
      if (index == 5) {
        index = 0;
      }
    }
  }

  bool iseFinished() {
    if (questionAnswer[index] == questionAnswer.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
