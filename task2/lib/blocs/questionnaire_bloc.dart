import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task2/blocs/questionnaire_event.dart';
import 'package:task2/blocs/questionnaire_state.dart';
import 'package:task2/repository/questionnaire_repository.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final QuestionnaireRepository repository;

  QuestionnaireBloc(this.repository) : super(InitialQuestionnaireState() as QuestionnaireState) {
    on<LoadQuestionnairePressed>((event, emit) => _onLoad(event, emit));
  }

  Future <void> _onLoad(LoadQuestionnairePressed event, Emitter<QuestionnaireState> emit) async {
    emit(LoadingQuestionnaireState());
    try {
      final questionnaire = await repository.getQuestionnaire('1');
      emit(LoadedQuestionnaireState(questionnaire));
    } catch (e) {
      emit(ErrorQuestionnaireState('Не удалось загрузить опросник'));
    }
  }

}
  

