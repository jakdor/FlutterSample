import 'package:rxdart/subjects.dart';
import 'package:inject/inject.dart';

import 'package:flutter1/common/network/service/stack_service.dart';
import 'repository_request_status.dart';
import 'package:flutter1/common/model/stack_questions/stack_questions.dart';

class StackQuestionsRepository {

  final StackService stackService;
  final questionsListStatusSubject = BehaviorSubject<RepositoryRequestStatus>();

  StackQuestions lastStackQuestions;

  @provide
  StackQuestionsRepository(this.stackService);

  void getStackQuestionsList() {
    questionsListStatusSubject.sink.add(RepositoryRequestStatus.PENDING);

    stackService.getStackQuestions().then(
            (value) {
              lastStackQuestions = value;
              questionsListStatusSubject.sink.add(RepositoryRequestStatus.OK);
            }, onError: (e) =>
        questionsListStatusSubject.sink.add(RepositoryRequestStatus.ERROR));
  }

  void dispose() {
    questionsListStatusSubject.close();
  }
}
