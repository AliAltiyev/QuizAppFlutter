class Question {
  String question;
  bool answer;

  Question(this.question, this.answer);

  @override
  String toString() {
    return 'Question{question: $question, answer: $answer}';
  }
}
