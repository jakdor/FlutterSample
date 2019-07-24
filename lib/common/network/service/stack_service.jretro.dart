// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_service.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$StackServiceClient implements ApiClient {
  final String basePath = "";
  Future<StackQuestions> getStackQuestions() async {
    var req = base.get.path(basePath).path(
        "/questions?order=desc&sort=activity&tagged=Android&site=stackoverflow");
    return req.go(throwOnErr: true).map(decodeOne);
  }
}
