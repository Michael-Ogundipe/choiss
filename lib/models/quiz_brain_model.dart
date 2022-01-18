import 'package:flutter/material.dart';

import 'package:chois/models/question_model.dart';

class QuizBrainModel with ChangeNotifier {

  int _questionNumber = 0;

  // ignore: unused_field, prefer_final_fields
  List<Question> _questionBank = [
    Question("Do you like to work with numbers?", "Yes", "No"),
    Question("Do you enjoy building things and working with your hands?", "Yes", "No"),
    Question("Are you artistic, creative and or musical?", "Yes", "No"),
    Question("Do you love reading poems, history and comics?", "Yes", "Sometimes"),
    Question("Do you prefer going to the theatre and museums to a laboratory? ", "Yes", "No"),

  ];

  // To navigate to the next question
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    notifyListeners();
  }

  // To navigate to the previous question
  void previousQuestion() {
    if (_questionNumber != 0){
      if (_questionNumber <= _questionBank.length - 1) {
        _questionNumber--;
      }
      notifyListeners();
    };

  }

  // to get a question from the _questionBank List
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  // to return the text on the answer button
  String getOption1() {
    return _questionBank[_questionNumber].option1;
  }

  // to return the text on the answer button
  String getOption2() {
    return _questionBank[_questionNumber].option2;
  }

  // to check if the question has finished
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      debugPrint('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  // a reset() method that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
    notifyListeners();
  }
}