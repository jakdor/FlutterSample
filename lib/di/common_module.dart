import 'package:inject/inject.dart';

import 'package:flutter1/common/network/jaguar_factory.dart';
import 'package:flutter1/common/network/service/stack_service.dart';
import 'package:flutter1/common/repository/stack_questions_repository.dart';
import 'package:flutter1/common/bloc/stack_questions_bloc.dart';

@module
class CommonModule {

  @provide
  @singleton
  JaguarFactory jaguarFactory() => JaguarFactory();

  @provide
  @singleton
  StackService stackService(JaguarFactory jaguarFactory) =>
      jaguarFactory.buildStackService();

  @provide
  @singleton
  StackQuestionsRepository stackQuestionsRepository(StackService stackService) =>
      StackQuestionsRepository(stackService);

  @provide
  StackQuestionsBloc stackQuestionsBloc(StackQuestionsRepository repository) =>
      StackQuestionsBloc(repository);
}