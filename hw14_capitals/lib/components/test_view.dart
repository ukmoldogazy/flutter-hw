import 'package:flutter/material.dart';
import 'package:hw14_capitals/constants/colors.dart';
import 'package:hw14_capitals/constants/text_styles.dart';
import 'package:hw14_capitals/model/question_answer.dart';

class TestView extends StatefulWidget {
  const TestView({super.key, required this.question});
  final List<Question> question;

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  int index = 0;
  int correctAnswer = 0;
  int incorrectAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$incorrectAnswer', style: AppTextStyles.testFalseNum),
                  const Text('32', style: AppTextStyles.testAllNum),
                  Text('$correctAnswer', style: AppTextStyles.testTrueNum),
                ],
              ),
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            '3',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 40),
          const Icon(Icons.favorite, color: AppColors.red),
          const Icon(Icons.favorite, color: AppColors.red),
          const Icon(Icons.favorite, color: AppColors.red),
          const SizedBox(width: 40),
          const Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Slider(
            activeColor: AppColors.black,
            value: index.toDouble(),
            onChanged: (value) {},
            min: 0,
            max: index.toDouble(),
          ),
          Text(
            widget.question[index].text,
            style: AppTextStyles.capitals,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset('assets/${widget.question[index].image}.jpg'),
          ),
          const SizedBox(height: 10),
          Expanded(
            // flex: 2,
            child: GridView.builder(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
              ),
              itemCount: 4,
              itemBuilder: ((context, idx) {
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {
                      if (index + 1 == widget.question.length) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Your result!'),
                            content: Text(
                                'Correct: $correctAnswer\nIncorrect:$incorrectAnswer'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  index = 0;
                                  incorrectAnswer = 0;
                                  correctAnswer = 0;
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        if (widget.question[index].answers[idx].trueFalse ==
                            true) {
                          correctAnswer++;
                        } else {
                          incorrectAnswer++;
                        }
                      }
                      setState(() {
                        index++;
                      });
                    },
                    child: Center(
                      child: Text(widget.question[index].answers[idx].text),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
