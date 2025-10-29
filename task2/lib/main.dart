import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/api/questionnaire_service.dart';

import 'package:task2/blocs/questionnaire_bloc.dart';
import 'package:task2/pages/questionnaire_page.dart';
import 'package:task2/repository/questionnaire_repository.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mockService = MockQuestionnaireService();
    
    return MaterialApp(
      home: RepositoryProvider(
        create: (_) => MockQuestionnaireRepository(mockService),
        child: BlocProvider(
          create: (context) => QuestionnaireBloc(context.read<MockQuestionnaireRepository>()),
          child: const QuestionnairePage()
        )

      ),
    );
  }
}

