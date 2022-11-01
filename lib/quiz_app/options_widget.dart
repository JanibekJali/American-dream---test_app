import 'package:flutter/material.dart';
import 'package:test_app/quiz_app/question_model.dart';

class OptionsWidget extends StatelessWidget {
  final QuestionModel questionModel;
  final ValueChanged<Option>? onClickedOption;
  const OptionsWidget({
    Key? key,
    required this.questionModel,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:
            questionModel.options.map((e) => buildOption(context, e)).toList(),
      ),
    );
  }

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, questionModel);
    return GestureDetector(
      onTap: () => onClickedOption!(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            // getIconForOption(option, questionModel)
          ],
        ),
      ),
    );
  }

  getColorForOption(Option option, QuestionModel questionModel) {
    final isSelected = option == questionModel.selectedOption;
    if (questionModel.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade300;
  }

  // Widget getIconForOption(Option option, QuestionModel questionModel) {
  //   final isSelected = option == questionModel.selectedOption;
  //   if (questionModel.isLocked) {
  //     if (isSelected) {
  //       return option.isCorrect
  //           ? const Icon(
  //               Icons.check_circle,
  //               color: Colors.green,
  //             )
  //           : const Icon(
  //               Icons.cancel,
  //               color: Colors.red,
  //             );
  //     } else if (option.isCorrect) {
  //       return const Icon(
  //         Icons.check_circle,
  //         color: Colors.green,
  //       );
  //     }
  //     return const SizedBox.shrink();
  //   }
  // }

//  void onClickedOption(Option option) {}
}
