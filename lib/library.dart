class Question {
  Question(String q, bool a) {
    text = q;
    answer = a;
  }
  String text;
  bool answer;
}

class QuestionBank {
  int currentQuestionNumber = 0;
  List<Question> questions = [
    Question('Sommige katten zijn allergisch voor mensen', true),
    Question(
        'kan een koe een trap naar beneden laten nemen, maar niet naar boven',
        false),
    Question(
        'Een kwart van de menselijke botten bevinden zich in de voet', true),
    Question('Een slak zijn bloed is groen', true),
    Question('In Portugal is het illegaal om in de oceaan te plassen', true),
    Question(
        'Geen enkel droog stuk papier can 7x in twee geplooid worden', false),
    Question('Een Afrikaanse olifant is het luidste dier ter wereld', false),
    Question(
        'De totale oppervlakte van twee menselijke longen is 70 vierkante meter',
        true),
    Question('Google noemde eerst backrub', true),
    Question(
        'In West-Virginia, USA, als je een dier met de auto dood rijdt, mag je het meenemen naar huis om op te eten',
        true)
  ];

  String getCurrentQuestion() {
    return questions[currentQuestionNumber].text;
  }

  bool getCurrentAnswer() {
    return questions[currentQuestionNumber].answer;
  }

  void nextQuestion() {
    currentQuestionNumber++;
  }

  bool isFinished() {
    return currentQuestionNumber >= questions.length - 1;
  }
}
