class Question {
  const Question({
    required this.text,
    required this.image,
    required this.answers,
  });

  final String text;
  final String image;
  final List<Answer> answers;
}

class Answer {
  const Answer({
    required this.text,
    required this.trueFalse,
  });

  final String text;
  final bool trueFalse;
}

const Question question1 = Question(
  text: 'Paris',
  image: 'paris',
  answers: [
    Answer(text: 'Germany', trueFalse: false),
    Answer(text: 'France', trueFalse: true),
    Answer(text: 'Finland', trueFalse: false),
    Answer(text: 'Italy', trueFalse: false),
  ],
);

const Question question2 = Question(
  text: 'Bern',
  image: 'bern',
  answers: [
    Answer(text: 'Egypt', trueFalse: false),
    Answer(text: 'Canada', trueFalse: false),
    Answer(text: 'Mexico', trueFalse: false),
    Answer(text: 'Switzerland', trueFalse: true),
  ],
);

const Question question3 = Question(
  text: 'Berlin',
  image: 'berlin',
  answers: [
    Answer(text: 'Germany', trueFalse: true),
    Answer(text: 'Philippines', trueFalse: false),
    Answer(text: 'Singapore', trueFalse: false),
    Answer(text: 'Argentina', trueFalse: false),
  ],
);

const Question question4 = Question(
  text: 'Bishkek',
  image: 'bishkek',
  answers: [
    Answer(text: 'Kasakhstan', trueFalse: false),
    Answer(text: 'Finland', trueFalse: false),
    Answer(text: 'Kyrgyzstan', trueFalse: true),
    Answer(text: 'Afghanistan', trueFalse: false),
  ],
);

const Question question5 = Question(
  text: 'Washington DC',
  image: 'washington',
  answers: [
    Answer(text: 'Uzbekistan', trueFalse: false),
    Answer(text: 'USA', trueFalse: true),
    Answer(text: 'Thailand', trueFalse: false),
    Answer(text: 'Bangladesh', trueFalse: false),
  ],
);

const Question question6 = Question(
  text: 'Singapore',
  image: 'singapore',
  answers: [
    Answer(text: 'Japan', trueFalse: false),
    Answer(text: 'Cuba', trueFalse: false),
    Answer(text: 'China', trueFalse: false),
    Answer(text: 'Singapore', trueFalse: true),
  ],
);

List<Question> questionAnswerList = [
  question1,
  question2,
  question3,
  question4,
  question5,
  question6
];
