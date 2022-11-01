import 'package:flutter/material.dart';

class QuestionModel {
  final String? questions;
  final bool? answers;
  QuestionModel({this.questions, this.answers});
}

class Questions {
  int index = 0;
  List<QuestionModel> questionAnswers = [
    QuestionModel(questions: 'Kyrgyzstanda 5 oblast bar', answers: false),
    QuestionModel(questions: 'Osh Bishkeke karaiby?', answers: false),
    QuestionModel(questions: 'Abdulkadir 16 jashtaby?', answers: true),
    QuestionModel(questions: 'Oshto arka barby?', answers: true),
  ];
  String? suroonuAlipKel() {
    return questionAnswers[index].questions;
  }

  bool? jooptuAlipKel() {
    return questionAnswers[index].answers;
  }

  dynamic teksher() {
    if (questionAnswers[index].questions == questionAnswers[index].answers) {
      return const Text('Туура таптын');
    } else {
      return const Text('Joop tuura emes');
    }
  }

  int jash = 18;
  dynamic teksher2() {
    if (jash >= 18) {
      return const Text('Okuuga tashirsa bolot');
    } else {
      return const Text('Okuuga tashirsa bolboit');
    }
  }
}

// Questions questions = Questions();
