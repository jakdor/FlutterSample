import 'package:jaguar_retrofit/jaguar_retrofit.dart';

import 'package:flutter1/common/model/stack_questions/stack_questions.dart';

part 'stack_service.jretro.dart';

@GenApiClient()
class StackService extends ApiClient with _$StackServiceClient {
  final Route base;

  StackService(this.base);

  @GetReq(path: "/questions?order=desc&sort=activity&tagged=Android&site=stackoverflow")
  Future<StackQuestions> getStackQuestions();
}