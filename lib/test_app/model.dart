class QuestionModel {
  final String? question;
  final Map<String, bool> answers;
  QuestionModel({this.question, required this.answers});
}

class QuestionBrain {
  List<QuestionModel> test = [
    QuestionModel(
      question: 'Kyrgyzstan kachan egemenduu olko bolgon?',
      answers: {
        '1999': false,
        '1990': false,
        '1991': true,
        '1994': false,
      },
    ),
    QuestionModel(
      question: 'Kyrgyzstanda kancha oblast bar?',
      answers: {
        '1': false,
        '12': false,
        'Jok': false,
        '7': true,
      },
    ),
    QuestionModel(
      question: 'Kyrgyzstandyn presidenti kim?',
      answers: {
        'S.Zhaparov': true,
        'A.Madumarov': false,
        'I.Isakov': false,
        'K.Tashiev': false,
      },
    ),
  ];
}

QuestionBrain questionBrain = QuestionBrain();
