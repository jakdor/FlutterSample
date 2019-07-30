import 'dart:io';

import 'package:inject/inject.dart';

import 'package:flutter1/common/network/jaguar_factory.dart';
import 'package:flutter1/common/network/service/stack_service.dart';
import 'package:flutter1/common/repository/stack_questions_repository.dart';
import 'package:flutter1/common/bloc/stack_questions_bloc.dart';
import 'package:flutter1/common/network/rest_io_client.dart';

@module
class CommonModule {

  @provide
  RestIOClient restIoClient() => RestIOClient(
      HttpClient()
        ..connectionTimeout = const Duration(seconds: 10)
        ..idleTimeout = const Duration(seconds: 10)
  );

  @provide
  @singleton
  JaguarFactory jaguarFactory(RestIOClient restIOClient) =>
      JaguarFactory(restIOClient);

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