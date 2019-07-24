import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'stack_questions.jser.dart';

@GenSerializer()
class StackQuestionsSerializer extends Serializer<StackQuestions> with _$StackQuestionsSerializer {
}

class StackQuestions {
  //dummy placeholder field
  List<String> items = ['item1', 'item2', 'item3'];
}