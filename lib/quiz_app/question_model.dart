import 'package:flutter/material.dart';

class QuestionModel {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;
  QuestionModel({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
  buildOption(BuildContext context, Option option) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          option.text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class Option {
  final String text;
  final bool isCorrect;

  Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  QuestionModel(
    text: 'Кыргызстанда канча область бар?',
    options: [
      Option(
        text: '2',
        isCorrect: false,
      ),
      Option(
        text: '7',
        isCorrect: true,
      ),
      Option(
        text: '4',
        isCorrect: false,
      ),
      Option(
        text: '5',
        isCorrect: false,
      ),
    ],
  ),
  QuestionModel(
    text: 'Кыргызстанда канча район бар?',
    options: [
      Option(
        text: '10',
        isCorrect: false,
      ),
      Option(
        text: '90',
        isCorrect: false,
      ),
      Option(
        text: '40',
        isCorrect: true,
      ),
      Option(
        text: '30',
        isCorrect: false,
      ),
    ],
  ),
  QuestionModel(
    text: 'Кыргызстандын аянты канча?',
    options: [
      Option(
        text: '199.9кв',
        isCorrect: true,
      ),
      Option(
        text: '200.9кв',
        isCorrect: false,
      ),
      Option(
        text: '100кв',
        isCorrect: false,
      ),
      Option(
        text: '30кв',
        isCorrect: false,
      ),
    ],
  ),
];
