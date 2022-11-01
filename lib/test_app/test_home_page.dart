import 'package:flutter/material.dart';
import 'package:test_app/test_app/model.dart';

class TestHomePage extends StatelessWidget {
  const TestHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionBrain.test[0].question.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          Text(
            questionBrain.test[0].answers.entries
                .every((element) => false)
                .toString(),
            style: const TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
