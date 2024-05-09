import 'package:sample_quiz/quiz.dart';

class QuizBrain {
  final int _quizNumber = 0;

  List<Quiz> quizText = [
    Quiz(quizTitle: '出身地は？', quizAnswer1: '岐阜', quizAnswer2: '富山'),
    Quiz(quizTitle: '出身高校は？', quizAnswer1: '大垣南高校', quizAnswer2: '大垣東高校'),
    Quiz(quizTitle: '中学時代の部活は？', quizAnswer1: '陸上部', quizAnswer2: '野球部'),
  ];

  String getTitle() {
    return quizText[_quizNumber].quizTitle;
  }

  String getAnswer1() {
    return quizText[_quizNumber].quizAnswer1;
  }

  String getAnswer2() {
    return quizText[_quizNumber].quizAnswer2;
  }
}
