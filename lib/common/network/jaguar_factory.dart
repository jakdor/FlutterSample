import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:flutter1/common/network/service/stack_service.dart';
import 'package:flutter1/common/model/stack_questions/stack_questions.dart';

class JaguarFactory {
  StackService buildStackService() {
    var repo = JsonRepo()..add(StackQuestionsSerializer());
    return StackService(route("https://api.stackexchange.com/2.2"))
      ..jsonConverter = repo;
  }
}