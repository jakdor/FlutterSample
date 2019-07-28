import 'package:inject/inject.dart';

import 'package:flutter1/common/network/jaguar_factory.dart';
import 'package:flutter1/common/network/service/stack_service.dart';
import 'package:flutter1/common/repository/stack_questions_repository.dart';

@module
class CommonModule {

  @provide
  @singleton
  StackService stackService() => JaguarFactory().buildStackService();

  @provide
  StackQuestionsRepository stackQuestionsRepository(StackService stackService) =>
      StackQuestionsRepository(stackService);
}