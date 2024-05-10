import 'package:flutter/material.dart';
import 'package:sample_quiz/quiz_brain.dart';

void main() {
  runApp(const MainApp());
}

QuizBrain quizBrain = QuizBrain();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // プロパティ
  List<Widget> checkedList = [];

  // メソッド
  void checkedAnswer() {
    checkedList.add(
      const Icon(Icons.check, color: Colors.green),
    );
  }

  void closedAnswer() {
    checkedList.add(
      const Icon(Icons.close, color: Colors.red),
    );
  }

  void quizEvaluation(String answer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      quizBrain.nextQuiz();

      //if
      if (correctAnswer == answer) {
        checkedAnswer();
      } else {
        closedAnswer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 16,
                      child: Center(
                        child: Text(
                          quizBrain.getTitle(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            String getAnswer1 = quizBrain.getAnswer1();
                            quizEvaluation(getAnswer1);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(0),
                              ),
                            ),
                          ),
                          child: Text(
                            quizBrain.getAnswer1(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              String getAnswer2 = quizBrain.getAnswer2();
                              quizEvaluation(getAnswer2);
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(0),
                                  ),
                                )),
                            child: Text(
                              quizBrain.getAnswer2(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                    Row(
                      children: checkedList,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
