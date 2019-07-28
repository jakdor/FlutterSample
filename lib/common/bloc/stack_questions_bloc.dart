import 'package:flutter1/common/model/stack_questions/stack_questions.dart';
import 'package:rxdart/rxdart.dart';

import 'base_bloc.dart';
import 'package:flutter1/common/repository/stack_questions_repository.dart';

class StackQuestionsBloc extends BaseBloc {

  final StackQuestionsRepository _stackQuestionsRepository;
  final _questionSubject = PublishSubject<StackQuestions>();

  Observable<StackQuestions> get questionStream => _questionSubject.stream;

  StackQuestionsBloc(this._stackQuestionsRepository) {
    _stackQuestionsRepository.questionsListStatusSubject.stream.listen((status) => {

    }, onError: (e) => {

    });
  }

  void requestStackQuestions([bool forceUpdate = false]){
    _stackQuestionsRepository.getStackQuestionsList(forceUpdate);
  }

  @override
  void dispose() {
    _questionSubject.close();
  }
}