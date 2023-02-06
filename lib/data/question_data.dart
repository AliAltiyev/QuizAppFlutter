import 'package:quiz_app_flutter/model/question.dart';

class QuestionsData {
  static List<Question> getQuestions() {
    return [
      Question('Sharks are mammals.', false),
      Question('Sea otters have a favorite rock they use to break open food.', true),
      Question('Sharks are mammals.', false),
      Question('The blue whale is the biggest animal to have ever lived', true),
      Question('The hummingbird egg is the world''s smallest bird egg.', true),
      Question('Pigs roll in the mud because they don’t like being clean.', false),
    ];
  }
}
