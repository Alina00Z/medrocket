import 'dart:convert';

class MockQuestionnaireService {
  const MockQuestionnaireService();
  Future<Map<String, dynamic>> getQuestionnaireData(String id) async {
    // Имитация сетевого запроса с задержкой
    await Future.delayed(const Duration(seconds: 1));
    final json = '{"id": $id, "progress": 40}';
    return jsonDecode(json);
  }
}