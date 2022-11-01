import 'package:flutter/material.dart';
import 'package:test_app/quiz_app/quiz_widget.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizWidget(),
    );
  }
}
