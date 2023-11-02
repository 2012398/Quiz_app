class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "What company makes the Xperia model of smartphone?",
    [
      Answer("Samsung", false),
      Answer("Nokia", false),
      Answer("Sony", true),
      Answer("Iphone", false),
    ],
  ));

  list.add(Question(
    " Which flies a green, white, and orange (in that order) tricolor flag? ",
    [
      Answer("Ireland", true),
      Answer("Ivory Coast", false),
      Answer("Italy", false),
      Answer("India", false),
    ],
  ));

  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", false),
      Answer("Video Sharing", false),
      Answer("Live Streaming", false),
      Answer("All of the above", true),
    ],
  ));

  list.add(Question(
    "Flutter uses dart as a language?",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));

  return list;
}
