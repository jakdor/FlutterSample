import 'package:rxdart/subjects.dart';

import 'repository_request_status.dart';

class StackQuestionsRepository {

  final QuestionsListStatusSubject = BehaviorSubject<RepositoryRequestStatus>();

  void GetStackQuestionsList([bool forceUpdate = false]) {
    QuestionsListStatusSubject.sink.add(RepositoryRequestStatus.PENDING);
  }

  void dispose() {
    QuestionsListStatusSubject.close();
  }
}
