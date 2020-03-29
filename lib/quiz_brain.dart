import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(
      question: 'The rocks formed from molten magma\, are called',
      answer: 'Ignous Rocks',
      oA: 'Sedimentry Rock',
      oB: 'Ignous Rocks',
      oC: 'Metamorphic Rocks',
      oD: 'None of the Above',
    ),
    Questions(
      question: 'The staple food of the Vedic Aryan was',
      answer: 'Milk and its products',
      oA: 'Barley and rice',
      oB: 'Vegetables and fruits',
      oC: 'Rice and pulses',
      oD: 'Milk and its products',
    ),
    Questions(
      question:
          'The tropic of cancer does not pass through which of these Indian states ?',
      answer: 'Odisha',
      oA: 'Madhya Pradesh',
      oB: 'West Bengal',
      oC: 'Odisha',
      oD: ' Rajasthan',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
    Questions(
      question: 'The rocks formed from molten magma\, are called',
      answer: 'Ignous Rocks',
      oA: 'Sedimentry Rock',
      oB: 'Ignous Rocks',
      oC: 'Metamorphic Rocks',
      oD: 'None of the Above',
    ),
    Questions(
      question: 'The staple food of the Vedic Aryan was',
      answer: 'Milk and its products',
      oA: 'Barley and rice',
      oB: 'Vegetables and fruits',
      oC: 'Rice and pulses',
      oD: 'Milk and its products',
    ),
    Questions(
      question:
          'The tropic of cancer does not pass through which of these Indian states ?',
      answer: 'Odisha',
      oA: 'Madhya Pradesh',
      oB: 'West Bengal',
      oC: 'Odisha',
      oD: ' Rajasthan',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
    Questions(
      question: 'The purest form of iron is ',
      answer: 'wrought iron',
      oA: 'wrought iron',
      oB: 'steel',
      oC: 'pig iron',
      oD: 'nickel steel',
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  String getAnswerText() {
    return _questionBank[_questionNumber].answer;
  }

  String getAnswerA() {
    return _questionBank[_questionNumber].oA;
  }

  String getAnswerB() {
    return _questionBank[_questionNumber].oB;
  }

  String getAnswerC() {
    return _questionBank[_questionNumber].oC;
  }

  String getAnswerD() {
    return _questionBank[_questionNumber].oD;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
