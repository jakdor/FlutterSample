import 'package:rxdart/subjects.dart';
import 'package:inject/inject.dart';

import 'package:flutter1/common/network/service/stack_service.dart';
import 'repository_request_status.dart';

class StackQuestionsRepository {

  final StackService stackService;
  final questionsListStatusSubject = BehaviorSubject<RepositoryRequestStatus>();

  @provide
  StackQuestionsRepository(this.stackService);

  void getStackQuestionsList([bool forceUpdate = false]) {
    questionsListStatusSubject.sink.add(RepositoryRequestStatus.PENDING);
  }

  void dispose() {
    questionsListStatusSubject.close();
  }
}
