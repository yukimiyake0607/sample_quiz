import 'package:sample_quiz/quiz.dart';

class QuizBrain {
  int _quizNumber = 0;

  final List<Quiz> _quizText = [
    Quiz(quizTitle: '出身地は？', quizAnswer1: '岐阜', quizAnswer2: '富山'),
    Quiz(quizTitle: '出身高校は？', quizAnswer1: '大垣南高校', quizAnswer2: '大垣東高校'),
    Quiz(quizTitle: '中学時代の部活は？', quizAnswer1: '陸上部', quizAnswer2: '野球部'),
    Quiz(quizTitle: '高校時代の部活は？', quizAnswer1: '陸上部', quizAnswer2: '野球部'),
    Quiz(quizTitle: '好きな球団は？', quizAnswer1: '中日', quizAnswer2: '巨人'),
    Quiz(quizTitle: '長く続けたバイトは？', quizAnswer1: '結婚式場', quizAnswer2: 'ポールスミス'),
    Quiz(quizTitle: '趣味は？', quizAnswer1: '読書', quizAnswer2: '筋トレ'),
    Quiz(quizTitle: '最近ハマっている小説ジャンルは？', quizAnswer1: 'ミステリ', quizAnswer2: '恋愛'),
    Quiz(quizTitle: '使っているPCは？', quizAnswer1: 'Mac', quizAnswer2: 'Windows'),
    Quiz(
        quizTitle: '最近ハマっているアパレルブランドは？',
        quizAnswer1: 'Traditional Weather Wear',
        quizAnswer2: 'Mackintosh'),
  ];

  final List<String> _answerBrain = [
    '岐阜',
    '大垣南高校',
    '野球部',
    '陸上部',
    '中日',
    'ポールスミス',
    '読書',
    '恋愛',
    'Mac',
    'Traditional Weather Wear'
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

  void nextQuiz() {
    _quizNumber++;
  }

  String getCorrectAnswer() {
    return _answerBrain[_quizNumber];
  }
}
