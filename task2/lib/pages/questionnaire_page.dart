import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task2/blocs/questionnaire_bloc.dart';
import 'package:task2/blocs/questionnaire_event.dart';
import 'package:task2/blocs/questionnaire_state.dart';

class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
          builder: (context, state) {
            if (state is InitialQuestionnaireState) {
              return Column(
                spacing: 20,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Опросник не загружен'),
                  ElevatedButton(
                    onPressed: () => context.read<QuestionnaireBloc>().add(
                      LoadQuestionnairePressed(),
                    ),
                    child: Text('Загрузить опросник'),
                  ),
                ],
              );
            } else if (state is LoadingQuestionnaireState) {
              return const CircularProgressIndicator();
            } else if (state is LoadedQuestionnaireState) {
              final status = state.questionnaire.progress < 100
                  ? 'Опросник в процессе заполнения'
                  : 'Опросник полностью завершен';
              return Text(status);
            } else if (state is ErrorQuestionnaireState) {
              return Text('Ошибка');
            } else {
              return const Text('404');
            }
          },
        ),
      ),
    );
  }
}
