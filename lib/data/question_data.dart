import 'package:quiz_app_flutter/model/question.dart';

class QuestionsData {
  static int _questionNumber = 0;

  static final List<Question> questions = [
    Question('Sharks are mammals.', false),
    Question(
        'Sea otters have a favorite rock they use to break open food.', true),
    Question('Sharks are mammals.', false),
    Question('The blue whale is the biggest animal to have ever lived', true),
    Question('The hummingbird egg is the world' 's smallest bird egg.', true),
    Question(
        'Pigs roll in the mud because they don’t like being clean.', false),
    Question('Sharks are mammals.', false),
    Question(
        'Sea otters have a favorite rock they use to break open food.', true),
    Question('Sharks are mammals.', false),
    Question('The blue whale is the biggest animal to have ever lived', true),
    Question('The hummingbird egg is the world' 's smallest bird egg.', true),
    Question(
        'Pigs roll in the mud because they don’t like being clean.', false),
  ];

  static String getQuestionText() {
    return questions[_questionNumber].question;
  }

  static bool getAnswer() {
    return questions[_questionNumber].answer;
  }

  static nextQuestion() {
    if (_questionNumber < QuestionsData.questions.length - 1) {
      _questionNumber++;
    }
  }

  static bool isFinished() {
    if (_questionNumber >= questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  static void reset() {
    _questionNumber = 0;
  }
}
