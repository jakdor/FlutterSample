// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_questions.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$StackQuestionsSerializer
    implements Serializer<StackQuestions> {
  @override
  Map<String, dynamic> toMap(StackQuestions model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(
        ret, 'items', codeIterable(model.items, (val) => val as String));
    return ret;
  }

  @override
  StackQuestions fromMap(Map map) {
    if (map == null) return null;
    final obj = StackQuestions();
    obj.items =
        codeIterable<String>(map['items'] as Iterable, (val) => val as String);
    return obj;
  }
}
