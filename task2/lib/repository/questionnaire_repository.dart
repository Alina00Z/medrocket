import 'dart:async';
import 'package:task2/api/questionnaire_service.dart';

import 'package:task2/models/questionnaire.dart';

abstract class QuestionnaireRepository {
  const QuestionnaireRepository();
  Future<Questionnaire> getQuestionnaire(String id);
}

class MockQuestionnaireRepository extends QuestionnaireRepository {
  final MockQuestionnaireService mockService;

  MockQuestionnaireRepository(this.mockService);

  @override
  Future<Questionnaire> getQuestionnaire(String id) async {
    final map = await mockService.getQuestionnaireData(id);
    return Questionnaire.fromJson(map);
  }
}
