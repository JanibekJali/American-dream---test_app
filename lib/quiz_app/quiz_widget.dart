import 'package:flutter/material.dart';
import 'package:test_app/quiz_app/options_widget.dart';
import 'package:test_app/quiz_app/question_model.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  final int _questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            'Question $_questionNumber / ${questions.length}',
            style: const TextStyle(fontSize: 30),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  return buildQuestion(question);
                }),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Column buildQuestion(QuestionModel questionModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(
          questionModel.text,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 32,
        ),
        Expanded(
          child: OptionsWidget(
            questionModel: questionModel,
            onClickedOption: (option) {
              if (questionModel.isLocked) {
                return;
              } else {
                setState(() {
                  questionModel.isLocked = true;
                  questionModel.selectedOption = option;
                });
              }
            },
          ),
        )
      ],
    );
  }
}
